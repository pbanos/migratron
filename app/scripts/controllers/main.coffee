'use strict'

###*
 # @ngdoc function
 # @name Migratron.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the Migratron
###

angular.module 'Migratron'
  .controller 'MainCtrl', ($scope) ->
    $scope.answers = {}
    acetazolamida =
        price: 2
        forbidden: (answers) ->
            (answers.embarazo or answers.alergiaacetazolamida or answers.acidosismetabolica or answers.depresion or answers.farmaacidoacetilsalicilico or answers.farmaciclosporina or answers.farmadigoxina or answers.farmalisdexanfetamina or answers.farmacarbonatodelitio or answers.farmametildigoxina or answers.farmatopiramato or answers.farmazonisamida)
        notRecommended: (answers) ->
            !@forbidden(answers) and
            (answers.insuficienciahepatica or answers.diabetes or answers.insuficienciarenal or answers.gotahiperuricemia or answers.calculosurinarios or answers.farmacarbamazepina or answers.farmaeslicarbazepina or answers.farmafenitoina or answers.farmafenobarbital or answers.farmaprimidona or answers.farmapseudoefedrina or answers.farmatimololoftalmico)
        recommended: (answers) ->
            !@forbidden(answers) and
            !@notRecommended(answers) and
            true
        concomitantConditions: (answers) ->
            [answers.edema, answers.epilepsia, answers.glaucoma].filter((condition) ->
              condition
            ).length
    amitriptilina =
        price: 1
        forbidden: (answers) ->
            (answers.embarazo or answers.alergiaamitriptilina or answers.infartodemiocardio or answers.alcohol or answers.farmaadenosina or answers.farmatrioxidodearsenico or answers.farmaatomoxetina or answers.farmaatropina or answers.farmacarbamazepina or answers.farmaclonidina or answers.farmaclorpromacina or answers.farmaclozapina or answers.farmadroperidol or answers.farmaepinefrina or answers.farmaeslicarbazepina or answers.farmaepinefrina or answers.farmafenilefrinanasal or answers.farmafenobarbital or answers.farmaflufenacina or answers.farmafluoxetina or answers.farmafluvoxamina or answers.farmahaloperidol or answers.farmalevomepromazina or answers.farmalinezolid or answers.farmacarbonatodelitio or answers.farmamoclobemida or answers.farmanorepinefrina or answers.farmaperfenazina or answers.farmapericiazina or answers.farmapimozida or answers.farmarasagilina or answers.farmasaquinavir or answers.farmaselegilina or answers.farmasotalol or answers.farmasunitinib or answers.farmatacrolimus or answers.farmatranilcipromina or answers.farmavalproato or answers.farmavalpromida)
        notRecommended: (answers) ->
            !@forbidden(answers) and
            (answers.angina or answers.arritmiaobloqueocardiaco or answers.insuficienciahepatica or answers.hipertiroidismo or answers.epilepsia or answers.glaucoma or answers.esquizofrenia or answers.trastornobipolar or answers.tendenciasuicida or answers.hipertrofiaprostaticaouropatiaobstructiva or answers.estrenimiento or answers.fotosensibilidad or answers.feocromocitoma or answers.farmaaltizida or answers.farmabaclofeno or answers.farmabendroflumetiazida or answers.farmabiperideno or answers.farmabumetanida or answers.farmabupropion or answers.farmacitalopram or answers.farmaclortalidona or answers.farmadiazepam or answers.farmadisulfiram or answers.farmaescopolamina or answers.farmaestradiol or answers.farmaestriol or answers.farmaetinilestradiol or answers.farmafluconazol or answers.farmafurosemida or answers.farmagranisetron or answers.farmahidroclorotiazida or answers.farmahiperico or answers.farmaindapamida or answers.farmajosamicina or answers.farmalevodopa or answers.farmamorfina or answers.farmaondansetron or answers.farmapalonosetron or answers.farmapiretanida or answers.farmaprociclinida or answers.farmasertralina or answers.farmasulfacrato or answers.farmaterbinafina or answers.farmatorasemida or answers.farmatrihexifenilo or answers.farmaxipamida or answers.farmaescitalopram or answers.farmafenilefrinanasal or answers.farmaformoterol or answers.farmametildopa or answers.farmamirabegron or answers.farmanafazolinanasal or answers.farmaoximetazolinanasal or answers.farmanilotinib or answers.farmaparoxetina or answers.farmaritonavir or answers.farmatramazolinanasal or answers.farmaxilometazolinanasal or answers.farmaestrogenosconjugados)
        recommended: (answers) ->
            !@forbidden(answers) and
            !@notRecommended(answers) and
            true
        concomitantConditions: (answers) ->
            [answers.depresion, answers.eneuresisnocturna, answers.dolorneuropatico].filter((condition) ->
              condition
            ).length
    flunarizina =
        price: 4
        forbidden: (answers) ->
            (answers.embarazo or answers.lactancia or answers.alergiaflunarizina or answers.parkinson or answers.depresion or answers.alcohol or answers.farmaetinilestradiol)
        notRecommended: (answers) ->
            !@forbidden(answers) and
            (answers.obesidad or answers.insuficienciahepatica or answers.farmacarbamazepina or answers.farmaciproterona or answers.farmaeslicarbazepina or answers.farmafenitoina or answers.farmavalproato)
        recommended: (answers) ->
            !@forbidden(answers) and
            !@notRecommended(answers) and
            true
        concomitantConditions: (answers) ->
            [].filter((condition) ->
              condition
            ).length
    propranolol =
        price: 3
        forbidden: (answers) ->
            (answers.alergiapropranolol or answers.hipotension or answers.bradicardia or answers.arritmiaobloqueocardiaco or answers.acidosismetabolica or answers.asma or answers.farmabambuterol or answers.farmaclonidina or answers.farmaclorazepatodipotasico or answers.farmaclordiacepoxido or answers.farmaclorpromacina or answers.farmadisopiramida or answers.farmadopamina or answers.farmaepinefrina or answers.farmafenilefrinanasal or answers.farmafingolimod or answers.farmafluoxetina or answers.farmaformoterol or answers.farmahidroclorotiazida or answers.farmaindacaterol or answers.farmalidocaina or answers.farmamedazepam or answers.farmametacolina or answers.farmanimodipino or answers.farmaolodaterol or answers.farmapinazepam or answers.farmaprazosina or answers.farmaprocainamida or answers.farmasalbutamol or answers.farmasalmeterol or answers.farmaterbutalina or answers.farmavilanterol)
        notRecommended: (answers) ->
            !@forbidden(answers) and
            (answers.embarazo or answers.arteriopatiaperiferica or answers.psoriasis or answers.insuficienciahepatica or answers.hipertiroidismo or answers.diabetes or answers.insuficienciarenal or answers.miasteniagravis or answers.depresion or answers.feocromocitoma or answers.farmaabiraterona or answers.farmaaceclofenaco or answers.farmaacenocumarol or answers.farmaacidoacetilsalicilico or answers.farmaamiodarona or answers.farmaacidoascorbico or answers.farmacelecoxib or answers.farmacolestipol or answers.farmacolestiramina or answers.farmadexibuprofeno or answers.farmadexketoprofeno or answers.farmadiazepam or answers.farmadiclofenaco or answers.farmadiltiazem or answers.farmadronedarona or answers.farmaergotamina or answers.farmaestradiol or answers.farmaestriol or answers.farmaestrogenosconjugados or answers.farmaetinilestradiol or answers.farmaetoricoxib or answers.farmafenobarbital or answers.farmaflecainida or answers.farmaflurbiprofeno or answers.farmafluvoxamina or answers.farmaheparina or answers.farmahidralazina or answers.farmaibuprofeno or answers.farmaimipramina or answers.farmaindometacina or answers.farmaisonixina or answers.farmaketoprofeno or answers.farmaketorolaco or answers.farmalornoxicam or answers.farmamaprotilina or answers.farmaacidomefenamico or answers.farmameloxicam or answers.farmanabumetona or answers.farmanaproxeno or answers.farmaneostigmina or answers.farmanifedipino or answers.farmaacidoniflumico or answers.farmaparacetamol or answers.farmaparecoxib or answers.farmabromurodepiridostigmina or answers.farmapiroxicam or answers.farmapromestrieno or answers.farmapropafenona or answers.farmarifampicina or answers.farmarizatriptan or answers.farmaclorurodesuxametonio or answers.farmatenoxicam or answers.farmateofilina or answers.farmaterbinafina or answers.farmatiopentalsodico or answers.farmaverapamilo or answers.farmawarfarina or answers.farmaacarbosa or answers.farmaagomelatina or answers.farmaalbiglutida or answers.farmaalgeldrato or answers.farmaalmasilato or answers.farmaalprostadilo or answers.farmacanaglifozina or answers.farmacitalopram or answers.farmacodeina or answers.farmadapaglifozina or answers.farmaempaglifozina or answers.farmaescitalopram or answers.farmaexenatida or answers.farmafampridina or answers.farmafenilefrinanasal or answers.farmafentanilo or answers.farmagalantamina or answers.farmaglibenclamida or answers.farmagliclazida or answers.farmaglimepirida or answers.farmaglipizida or answers.farmaglisentida or answers.farmagomaguar or answers.farmahaloperidol or answers.farmaimatinib or answers.farmainsulina or answers.farmalinagliptina or answers.farmaliraglutida or answers.farmalixisenatida or answers.farmacarbonatodemagnesio or answers.farmahidroxidodemagnesio or answers.farmaoxidodemagnesio or answers.farmatrisilicatodemagnesio or answers.farmametadona or answers.farmametformina or answers.farmamiglitol or answers.farmamodafilino or answers.farmamorfina or answers.farmanafazolinanasal or answers.farmanateglinida or answers.farmanisoldipino or answers.farmaopio or answers.farmaoximetazolinanasal or answers.farmapetidina or answers.farmapioglitazona or answers.farmapixantrona or answers.farmaranolazina or answers.farmarepaglinida or answers.farmasaxagliptina or answers.farmasitagliptina or answers.farmatramazolinanasal or answers.farmavemurafenib or answers.farmavildagliptina or answers.farmaxilometazolinanasal)
        recommended: (answers) ->
            !@forbidden(answers) and
            !@notRecommended(answers) and
            true
        concomitantConditions: (answers) ->
            [answers.angina, answers.ansiedad, answers.arritmiacardiaca, answers.hipertensionarterial, answers.miocardiopatiahipertrofica, answers.tembloresencial, answers.tirotoxicosis, answers.varicesesofagicas].filter((condition) ->
              condition
            ).length
    topiramato =
        price: 6
        forbidden: (answers) ->
            (answers.embarazo or answers.alergiatopiramato or answers.anorexia or answers.alcohol or answers.farmaacetazolamida or answers.farmaacidoascorbico or answers.farmacarbonatodecalcio or answers.farmaclorurodecalcio or answers.farmafosfatodecalcio or answers.farmalactatodecalcio or answers.farmapidolatodecalcio or answers.farmaclopidogrel or answers.farmagluconatodecalcio or answers.farmasaquinavir or answers.farmatriamtereno or answers.farmazonisamida)
        notRecommended: (answers) ->
            !@forbidden(answers) and
            (answers.fotosensibilidad or answers.insuficienciahepatica or answers.acidosismetabolica or answers.insuficienciarenal or answers.glaucoma or answers.tendenciasuicida or answers.depresion or answers.alteracionescognitivas or answers.calculosurinarios or answers.farmacarbamazepina or answers.farmadigoxina or answers.farmaeslicarbazepina or answers.farmaetinilestradiol or answers.farmafenitoina or answers.farmafenobarbital or answers.farmaglibenclamida or answers.farmahidroclorotiazida or answers.farmacarbonatodelitio or answers.farmametformina or answers.farmapioglitazona or answers.farmavalproato or answers.farmaprimidona)
        recommended: (answers) ->
            !@forbidden(answers) and
            !@notRecommended(answers) and
            true
        concomitantConditions: (answers) ->
            [answers.epilepsia, answers.obesidad].filter((condition) ->
              condition
            ).length
    valproato =
        price: 5
        forbidden: (answers) ->
            (answers.embarazo or answers.alergiavalproato or answers.insuficienciahepatica or answers.hepatitisagudaocronica or answers.farmaamitriptilina or answers.farmacarbamazepina or answers.farmaclobazam or answers.farmaclomipramina or answers.farmaclozapina or answers.farmaertapenem or answers.farmaeslicarbazepina or answers.farmafenitoina or answers.farmafenobarbital or answers.farmaimipenem or answers.farmameropenem or answers.farmanimodipino or answers.farmanortriptilina or answers.farmaprimidona)
        notRecommended: (answers) ->
            !@forbidden(answers) and
            (true or answers.porfiria or answers.dolorabdominal or answers.pancreatitis or answers.obesidad or answers.aplasiamedular or answers.insuficienciarenal or answers.tendenciasuicida or answers.depresion or answers.lupus or answers.farmaacenocumarol or answers.farmaacidoacetilsalicilico or answers.farmaaciclovir or answers.farmableomicina or answers.farmacisplatino or answers.farmaclonacepam or answers.farmaclorpromacina or answers.farmacolestiramina or answers.farmadiazepam or answers.farmadoxorubicina or answers.farmaetosuximida or answers.farmaflunarizina or answers.farmalamotrigina or answers.farmalorazepam or answers.farmametotrexato or answers.farmanaproxeno or answers.farmaorlistat or answers.farmaoxcarbazepina or answers.farmaoxibatosodico or answers.farmarufinamida or answers.farmatopiramato or answers.farmavinblastina or answers.farmawarfarina or answers.farmazidovudina or answers.farmaalprazolam or answers.farmabromazepam or answers.farmaclorazepatodipotasico or answers.farmaclordiacepoxido or answers.farmaclotiazepam or answers.farmafenilbutiratosodico or answers.farmaflurazepam or answers.farmalormetazepam or answers.farmamedazepam or answers.farmaoxazepam or answers.farmapinazepam or answers.farmatriazolam or answers.farmazolpidem)
        recommended: (answers) ->
            !@forbidden(answers) and
            !@notRecommended(answers) and
            true
        concomitantConditions: (answers) ->
            [answers.ausencias, answers.epilepsia, answers.tics, answers.trastornobipolar].filter((condition) ->
              condition
            ).length
    $scope.therapies=
      acetazolamida: acetazolamida
      amitriptilina: amitriptilina
      flunarizina: flunarizina
      propranolol: propranolol
      topiramato: topiramato
      valproato: valproato
    $scope.defaultTherapyOrder = [acetazolamida, amitriptilina, flunarizina, propranolol, topiramato, valproato]
    $scope.showCompleteEvaluation = false
    $scope.visible = (therapy) ->
      therapy == $scope.recommendedTherapy()
    $scope.recommendedTherapy = () ->
      $scope.suitableTherapies()[0]
    $scope.recommendationLevel = (therapy) ->
      return 0 if therapy.forbidden($scope.answers)
      return 1 if therapy.notRecommended($scope.answers)
      return 2 if therapy.recommended($scope.answers)
      return -1
    $scope.suitableTherapies = () ->
      $scope.defaultTherapyOrder.filter((therapy) ->
        not therapy.forbidden($scope.answers)
      ).sort((a, b) ->
        a_level = $scope.recommendationLevel(a)
        b_level = $scope.recommendationLevel(b)
        return b_level - a_level if a_level != b_level
        a_level = a.concomitantConditions($scope.answers)
        b_level = b.concomitantConditions($scope.answers)
        return b_level - a_level if a_level != b_level
        a_level = -a.price
        b_level = -b.price
        return b_level - a_level if a_level != b_level
        return 0
      )
    $scope.drawResolvedByConcomitantconditions = () ->
      suitableTherapies = $scope.suitableTherapies()
      return false if suitableTherapies.length < 2
      recommended = suitableTherapies[0]
      second_best = suitableTherapies[1]
      return false if $scope.recommendationLevel(recommended) != $scope.recommendationLevel(second_best)
      return recommended.concomitantConditions($scope.answers) != second_best.concomitantConditions($scope.answers)
    $scope.drawResolvedByPrice = () ->
      suitableTherapies = $scope.suitableTherapies()
      return false if suitableTherapies.length < 2
      recommended = suitableTherapies[0]
      second_best = suitableTherapies[1]
      return false if $scope.recommendationLevel(recommended) != $scope.recommendationLevel(second_best)
      return false if recommended.concomitantConditions($scope.answers) != second_best.concomitantConditions($scope.answers)
      return recommended.price != second_best.price
