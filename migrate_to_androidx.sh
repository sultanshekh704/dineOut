#!/bin/bash

# Migrate support library imports to AndroidX
find . -name "*.java" -type f -exec sed -i '' 's/import android.support.annotation.NonNull;/import androidx.annotation.NonNull;/g' {} +
find . -name "*.java" -type f -exec sed -i '' 's/import android.support.annotation.Nullable;/import androidx.annotation.Nullable;/g' {} +
find . -name "*.java" -type f -exec sed -i '' 's/import android.support.v7.app.AppCompatActivity;/import androidx.appcompat.app.AppCompatActivity;/g' {} +
find . -name "*.java" -type f -exec sed -i '' 's/import android.support.v7.app.AlertDialog;/import androidx.appcompat.app.AlertDialog;/g' {} +
find . -name "*.java" -type f -exec sed -i '' 's/import android.support.v7.app.AppCompatDialogFragment;/import androidx.appcompat.app.AppCompatDialogFragment;/g' {} +
find . -name "*.java" -type f -exec sed -i '' 's/import android.support.v7.app.ActionBar;/import androidx.appcompat.app.ActionBar;/g' {} +
find . -name "*.java" -type f -exec sed -i '' 's/import android.support.v7.widget.LinearLayoutManager;/import androidx.recyclerview.widget.LinearLayoutManager;/g' {} +
find . -name "*.java" -type f -exec sed -i '' 's/import android.support.v7.widget.RecyclerView;/import androidx.recyclerview.widget.RecyclerView;/g' {} +
find . -name "*.java" -type f -exec sed -i '' 's/import android.support.v7.widget.CardView;/import androidx.cardview.widget.CardView;/g' {} +
find . -name "*.java" -type f -exec sed -i '' 's/import android.support.v7.widget.SwitchCompat;/import androidx.appcompat.widget.SwitchCompat;/g' {} +
find . -name "*.java" -type f -exec sed -i '' 's/import android.support.v7.widget.Toolbar;/import androidx.appcompat.widget.Toolbar;/g' {} +
find . -name "*.java" -type f -exec sed -i '' 's/import android.support.v7.widget.DefaultItemAnimator;/import androidx.recyclerview.widget.DefaultItemAnimator;/g' {} +
find . -name "*.java" -type f -exec sed -i '' 's/import android.support.v7.widget.DividerItemDecoration;/import androidx.recyclerview.widget.DividerItemDecoration;/g' {} + 