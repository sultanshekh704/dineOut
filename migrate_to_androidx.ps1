# Migrate support library imports to AndroidX
Get-ChildItem -Path . -Filter *.java -Recurse | ForEach-Object {
    $content = Get-Content $_.FullName -Raw
    $content = $content -replace 'import android\.support\.annotation\.NonNull;', 'import androidx.annotation.NonNull;'
    $content = $content -replace 'import android\.support\.annotation\.Nullable;', 'import androidx.annotation.Nullable;'
    $content = $content -replace 'import android\.support\.v7\.app\.AppCompatActivity;', 'import androidx.appcompat.app.AppCompatActivity;'
    $content = $content -replace 'import android\.support\.v7\.app\.AlertDialog;', 'import androidx.appcompat.app.AlertDialog;'
    $content = $content -replace 'import android\.support\.v7\.app\.AppCompatDialogFragment;', 'import androidx.appcompat.app.AppCompatDialogFragment;'
    $content = $content -replace 'import android\.support\.v7\.app\.ActionBar;', 'import androidx.appcompat.app.ActionBar;'
    $content = $content -replace 'import android\.support\.v7\.widget\.LinearLayoutManager;', 'import androidx.recyclerview.widget.LinearLayoutManager;'
    $content = $content -replace 'import android\.support\.v7\.widget\.RecyclerView;', 'import androidx.recyclerview.widget.RecyclerView;'
    $content = $content -replace 'import android\.support\.v7\.widget\.CardView;', 'import androidx.cardview.widget.CardView;'
    $content = $content -replace 'import android\.support\.v7\.widget\.SwitchCompat;', 'import androidx.appcompat.widget.SwitchCompat;'
    $content = $content -replace 'import android\.support\.v7\.widget\.Toolbar;', 'import androidx.appcompat.widget.Toolbar;'
    $content = $content -replace 'import android\.support\.v7\.widget\.DefaultItemAnimator;', 'import androidx.recyclerview.widget.DefaultItemAnimator;'
    $content = $content -replace 'import android\.support\.v7\.widget\.DividerItemDecoration;', 'import androidx.recyclerview.widget.DividerItemDecoration;'
    Set-Content -Path $_.FullName -Value $content
} 