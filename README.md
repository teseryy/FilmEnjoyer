# Film Enjoyer

Většina lidí se rádi dívají na filmy. Po zhlédnutí filmu se lidé často chtějí podělit o emoci. FilmEnjoyer jim v tom pomůže. <br>FilmEnjoyer je databáze o kinematografii. Webová stranka se zabývají tím, že dovolujou si uživatelu ohodnotit film a napsat krátkou recenzi. Taky si lidé mohou prohlédnout informace o filmu, hodnocení a recenze. 

## Datový model vypadá takto:
![Data model](/resources/FE.png)

## Složitější dotaz:

Filmy s uživatelským hodnocením vyšší než 8.

## Komplexní dotaz:

Klient dostavá recenze. Pak k zadanému filmu a recenzi zjistí datum primiéry filmu a porovná to s datem recenze. Klient ověří, že premiéra je alespoň o den dříve než recenze. Polud ano, požádá server o přidaní recenze.


## Spuštění:

Pro spuštění bude vyžadována nakonfigurovaná databáze:
port : 5432
POSTGRES_PASSWORD = tjv
POSTGRES_USER = tjv
POSTGRES_DB = tjv.
Pak stačí spustit server (který bude spuštěn na localhost:8080) a klienta (který bude spuštěn na localhost:8888). Všechny závislosti jsou již uvedeny v souborech build.gradle.
Testy se spouštějí prostřednictvím souboru .gitlab-ci.yml.


## Klient:

Po spuštění klienta se uživatel dostane na domovskou stránku, kde může přecházet na uživatele, filmy a herce. Na těchto stránkách lze vytvářet uživatele, filmy a herce. Na stránce filmu může uživatel napsat recenzi filmu (při psaní recenze je důležité zadat správný username). Také na stránce uživatele můžete přejít na stránku s recenzí každého uživatele. Na stránce herců můžete přidat herce k filmu a zobrazit filmy, ve kterých herec hrál. Také na stránce filmů si můžete prohlédnout herce, kteří v daném filmu hrají, a recenze.
