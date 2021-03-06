<?php

namespace App\Helpers\Locales;

class It extends AbstractLanguage {

    public string
        $active            = 'Attivo',
        $addLevel          = 'Aggiungi livello',
        $addPlan           = 'Aggiungi piano',
        $addProject        = 'Aggiunta di progetti',
        $after             = 'dopo',
        $availableValues   = 'Valori disponibili',
        $badPassword       = 'Password errata',
        $chat              = 'Chiacchierare',
        $check             = 'dai un\'occhiata',
        $contact           = 'Contatto',
        $dateStart         = 'Data d\'inizio',
        $deleted           = 'Eliminato',
        $deposit           = 'Depositare',
        $description       = 'Descrizione',
        $enter             = 'Accedere',
        $error             = 'Errore',
        $exit              = 'Uscita',
        $expectedNumber    = 'Previsto un numero',
        $fileNotFound      = 'Il file %s non è stato trovato',
        $fixedLength       = 'Lunghezza fissa :',
        $free              = 'gratuita',
        $freeForAddProject = 'L\'aggiunta di un progetto al database è completamente',
        $from              = 'a partire dal',
        $guest             = 'Ospite',
        $headKeywords      = 'monitoraggio hyip 2020, progetti redditizi, capitali, investimenti',
        $headDescription   = 'Progetti di investimento ad alto rendimento 2020',
        $headTitle         = 'Mercato degli investimenti reali',
        $invalidDateFormat = 'Formato data non valido',
        $languages         = 'Lingue del sito',
        $level             = 'livello',
        $login             = 'Accesso',
        $loginIsBusy       = 'Questo accesso è già registrato. Inserisci un altro',
        $maxLength         = 'Numero massimo di caratteri :',
        $maxValue          = 'Valore massimo:',
        $message           = 'Messaggio',
        $messageIsSent     = 'Il messaggio viene inviato',
        $minDeposit        = 'Deposito minimo',
        $minLength         = 'Numero minimo di caratteri :',
        $minValue          = 'Valore minimo :',
        $menu              = 'Menù',
        $name              = 'Nome',
        $needAuthorization = 'Devi effettuare il login',
        $no                = 'No',
        $noAccess          = 'Nessun accesso',
        $noLanguage        = 'La lingua non è stata trovata',
        $noUser            = 'L\'utente non è stato trovato',
        $noPage            = 'La pagina non è stata trovata',
        $noProject         = 'Il progetto non è stato trovato',
        $notPublished      = 'Non pubblicato',
        $options           = 'Opzioni',
        $password          = 'Parola d\'ordine',
        $paymentSystem     = 'Sistemi di pagamento',
        $paywait           = 'Paywait',
        $period            = 'Periodo',
        $placeBanner       = 'Posiziona un banner|per $%d a settimana',
        $plans             = 'Piani di investimento',
        $profit            = 'Profitto',
        $projectName       = 'Nome del progetto',
        $projectIsAdded    = 'Il progetto viene aggiunto',
        $projectUrl        = 'URL del progetto o link di riferimento',
        $prohibitedChars   = 'Vengono inseriti caratteri vietati',
        $rating            = 'Valutazione',
        $refProgram        = 'Programma di riferimento',
        $registration      = 'Registrazione',
        $remember          = 'Ricorda',
        $remove            = 'Rimuovere',
        $repeatPassword    = 'Ripeti la password',
        $required          = 'Necessario',
        $scam              = 'Truffa',
        $sendForm          = 'Invia modulo',
        $showAllLangs      = 'Mostra tutte le lingue',
        $siteExists        = 'Il sito esiste già',
        $siteIsFree        = 'Il sito è gratuito',
        $startDate         = 'Data di inizio del progetto',
        $success           = 'Successo',
        $userRegistered    = 'L\'utente è registrato',
        $userRegistration  = 'Registrazione dell\'utente',
        $writeMessage      = 'Scrivi un messaggio',
        $wrongUrl          = 'Indirizzo del sito sbagliato',
        $wrongValue        = 'Valore sbagliato',
        $yes               = 'Sì',
        $youAreAuthorized  = 'Sei autorizzato';

    public array
        $paymentType       = ['Prelievo', 'Manuale', 'Istantaneo', 'Automatico'],
        $periodName        = ['', 'minuti', 'ore', 'giorni', 'settimane', 'mesi', 'anni'],
        $currency          = ['dollaro', 'euro', 'bitcoin', 'rublo', 'sterlina', 'yen', 'vinto', 'rupia'];

    public function getPeriodName(int $i, int $k): string {
        return ['minut', 'or', 'giorn', 'settiman', 'mes', 'ann'][$i-1].(
            $k === 1
                ? ['o', 'a', 'o', 'a', 'e', 'o'][$i-1]
                : ['i', 'e', 'i', 'e', 'i', 'i'][$i-1]
        );
    }
}
