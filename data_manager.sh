echo "Welcome to Data Preparation Tools!"

#Function 
setup_project() {
    project_name=$1

    if [ -z "$project_name" ]; then
        echo "Error: Debes proporcionar un nombre para el proyecto."
        exit 1
    fi

    mkdir -p "$project_name/data" "$project_name/reports" "$project_name/scripts"
    echo "Proyecto '$project_name' creado con las carpetas:"
    echo " - data/"
    echo " - reports/"
    echo " - scripts/"
}

# Verifica argumentos
if [ "$1" == "--setup-project" ]; then
    setup_project "$2"
fi
