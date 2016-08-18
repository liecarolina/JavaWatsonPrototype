/**
 * Copyright 2015 IBM Corp. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

'use strict';

// Sample text values
var SAMPLE_TEXT = {
  'es-ES': "Una plataforma tecnologica que utiliza procesamiento del lenguaje natural y aprendizaje automatico para revelar informacion clave de las grandes cantidades de datos no estructurados",
  'fr-FR': "Watson va encore plus loin que Deep Blue (qui analysait un monde fini de possibilites) , en effet, Watson represente une veritable innovation dans la comprehension par la machine du langage naturel.",
  'en-US': "IBM Watson is a cognitive system enabling a new partnership between people and computers.",
  'de-DE': "Das IBM Computersystem Watson versteht die menschliche Sprache, lernt durch Interaktion, analysiert die Daten und liefert Antworten fur bessere Ergebnisse.",
  'it-IT': "Le soluzioni basate sul modello di Watson, che renderanno la pratica medica e tante altre attivita nel settore della sanita piu precise, mirate ed efficaci, sia dal punto di vista terapeutico sia per quanto riguarda lefficienza e i risultati economici"
};

SAMPLE_TEXT['es-US'] = SAMPLE_TEXT['es-ES'];

var VOICES = {
   'en-US_AllisonVoice'  : 'English (en-US): Allison (female)',
   'en-US_LisaVoice'     : 'English (en-US): Lisa (female)',
   'en-US_MichaelVoice'  : 'English (en-US): Michael (male)',
   'fr-FR_ReneeVoice'    : 'French (fr-FR): Renee (female)',
   'de-DE_BirgitVoice'   : 'German (de-DE): Birgit (female)',
   'de-DE_DieterVoice'   : 'German (de-DE): Dieter (male)',
   'it-IT_FrancescaVoice': 'Italian (it-IT): Francesca (female)',
   'es-ES_LauraVoice'    : 'Spanish (es-US): Laura (female)',
   'es-US_SofiaVoice'    : 'Spanish (en-US): Sofia (female)',
   'es-ES_EnriqueVoice'  : 'Spanish (es-ES): Enrique (male)'
 };

var LANGUAGES = {
	'SPANISH' : 'es-ES',
	'FRENCH' : 'fr-FR',

}