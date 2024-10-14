<?php

namespace App\Http\Controllers;

use App\Models\Prospect;
use Illuminate\Http\Request;

class ProspectController extends Controller
{
    // Récupérer tous les prospects
    public function index()
    {
        return Prospect::all();
    }

    // Récupérer un prospect spécifique
    public function show($id)
    {
        $prospect = Prospect::find($id);
        if ($prospect) {
            return response()->json($prospect, 200);
        } else {
            return response()->json(['message' => 'Prospect not found'], 404);
        }
    }

    // Créer un nouveau prospect
    public function store(Request $request)
    {
        try {
            $validated = $request->validate([
                'full_name' => 'required|string',
                'email' => 'required|email|unique:prospects,email',
                'first_phone_number' => 'required|string',
                'second_phone_number' => 'nullable|string',
                'address' => 'required|string',
                'city' => 'required|string',
                'country' => 'required|string',
            ]);
    
            $prospect = Prospect::create($validated);
            return response()->json($prospect, 201);
        } catch (\Illuminate\Validation\ValidationException $e) {
            return response()->json(['errors' => $e->validator->errors()], 422);
        }
    }
    // Mettre à jour un prospect
    public function update(Request $request, $id)
    {
        $prospect = Prospect::find($id);

        if ($prospect) {
            $validated = $request->validate([
                'full_name' => 'string',
                'email' => 'email|unique:prospects,email,' . $id,
                'first_phone_number' => 'string',
                'address' => 'string',
                'city' => 'string',
                'country' => 'string',
            ]);

            $prospect->update($validated);
            return response()->json($prospect, 200);
        } else {
            return response()->json(['message' => 'Prospect not found'], 404);
        }
    }

    // Supprimer un prospect
    public function destroy($id)
    {
        $prospect = Prospect::find($id);

        if ($prospect) {
            $prospect->delete();
            return response()->json(['message' => 'Prospect deleted successfully'], 200);
        } else {
            return response()->json(['message' => 'Prospect not found'], 404);
        }
    }
}
