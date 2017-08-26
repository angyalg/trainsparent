// Memory Game
// © 2014 Nate Wiley
// License -- MIT
// best in full screen, works on phones/tablets (min height for game is 500px..) enjoy ;)
// Follow me on Codepen

(function(){

  var Memory = {

    init: function(cards){
      this.$game = $(".game");
      this.$modal = $(".modal");
      this.$overlay = $(".modal-overlay");
      this.$restartButton = $("button.restart");
      this.cardsSliced = this.getRandom(cards, 8);
      this.cardsArray = $.merge(this.cardsSliced, this.cardsSliced);
      this.shuffleCards(this.cardsArray);
      this.setup();
      this.binding();
    },

    shuffleCards: function(cardsArray){
      this.$cards = $(this.shuffle(this.cardsArray));
    },

    getRandom: function(arr, n) {
      var result = new Array(n),
          len = arr.length,
          taken = new Array(len);
      if (n > len)
          throw new RangeError("getRandom: more elements taken than available");
      while (n--) {
          var x = Math.floor(Math.random() * len);
          result[n] = arr[x in taken ? taken[x] : x];
          taken[x] = --len;
      }
      return result;
    },

    setup: function(){
      this.html = this.buildHTML();
      this.$game.html(this.html);
      this.$memoryCards = $(".card");
      this.paused = false;
      this.guess = null;
    },

    binding: function(){
      this.$memoryCards.on("click", this.cardClicked);
      this.$restartButton.on("click", $.proxy(this.reset, this));
    },
    // kinda messy but hey
    cardClicked: function(){
      var _ = Memory;
      var $card = $(this);
      if(!_.paused && !$card.find(".inside").hasClass("matched") && !$card.find(".inside").hasClass("picked")){
        $card.find(".inside").addClass("picked");
        if(!_.guess){
          _.guess = $(this).attr("data-id");
        } else if(_.guess == $(this).attr("data-id") && !$(this).hasClass("picked")){
          $(".picked").addClass("matched");
          _.guess = null;
        } else {
          _.guess = null;
          _.paused = true;
          setTimeout(function(){
            $(".picked").removeClass("picked");
            Memory.paused = false;
          }, 600);
        }
        if($(".matched").length == $(".card").length){
          _.win();
        }
      }
    },

    win: function(){
      this.paused = true;
      setTimeout(function(){
        Memory.showModal();
        Memory.$game.fadeOut();
      }, 1000);
    },

    showModal: function(){
      this.$overlay.show();
      this.$modal.fadeIn("slow");
    },

    hideModal: function(){
      this.$overlay.hide();
      this.$modal.hide();
    },

    reset: function(){
      this.hideModal();
      this.shuffleCards(this.cardsArray);
      this.setup();
      this.$game.show("slow");
    },

    // Fisher--Yates Algorithm -- https://bost.ocks.org/mike/shuffle/
    shuffle: function(array){
      var counter = array.length, temp, index;
      // While there are elements in the array
      while (counter > 0) {
          // Pick a random index
          index = Math.floor(Math.random() * counter);
          // Decrease counter by 1
          counter--;
          // And swap the last element with it
          temp = array[counter];
          array[counter] = array[index];
          array[index] = temp;
        }
        return array;
    },

    buildHTML: function(){
      var frag = '';
      this.$cards.each(function(k, v){
        frag += '<div class="card" data-id="'+ v.id +'"><div class="inside">\
        <div class="front"><img src="'+ v.img +'"\
        alt="'+ v.name +'" /></div>\
        <div class="back"><img src="http://res.cloudinary.com/ilidnew/image/upload/v1503746082/Trainsparent_logo_2_wjkuii.svg"\
        /></div></div>\
        </div>';
      });
      return frag;
    }
  };

  // var cards = [
  //   {
  //     name: "sublime",
  //     img: "https://s3-us-west-2.amazonaws.com/s.cdpn.io/74196/sublime-logo.png",
  //     id: 11
  //   },
  //   {
  //     name: "wordpress",
  //     img: "https://s3-us-west-2.amazonaws.com/s.cdpn.io/74196/wordpress-logo.png",
  //     id: 12
  //   },
  // ];

  var cards = [
              { id: 0, name: 'Angela Merkel', party:"CDU", profession: "Chancellor", img: "http://www.tagesspiegel.de/images/heprodimagesfotos82320161207merkel_293_1_20161206152458725-jpg/14943176/3-format6001.jpg" },
              { id: 1, name: 'Martin Schulz', party:"SPD", profession: "Party Chairman SPD", img: "http://media0.faz.net/ppmedia/aktuell/politik/3569665228/1.4745300/default/mai-2014-martin-schulz-auf-der.jpg" },
              { id: 2, name: 'Sigmar Gabriel', party:"SPD", profession: "Federal Foreign Minister", img: "https://image.gala.de/21324888/uncropped-0-0/ec41765926b506afc5df705d41f6c619/KK/sigmar-gabriel.jpg" },
              { id: 3, name: 'Frank-Walter Steinmeier', party:"SPD", profession: "President", img: "https://politikindermitte.files.wordpress.com/2012/05/steinmeierdapd_0505_jpg_5155387.jpg" },
              { id: 4, name: 'Wolfgang Schäuble', party:"CDU", profession:"Federal Minister of Finance", img: "http://media-cdn.sueddeutsche.de/image/sz.1.1910587/940x528?v=1394632007000"  },
              { id: 5, name: 'Brigitte Zypries', party:"SPD", profession: "Federal Minister of Economics", img: "https://image.stern.de/7579176/16x9-300-169/f07a5c6f302acef16cecfee8d586f02e/Di/brigitte-zypries.jpg" },
              { id: 6, name: 'Thomas de Maizière', party:"CDU", profession: "Federal Minister of the Interior", img: "https://image.stern.de/7435482/uncropped-0-0/1aecdf5d66216f7fd3643d157f3acf11/aJ/thomas-de-maiziere-leitkultur-pressestimmen.jpg" },
              { id: 7, name: 'Heiko Maas', party:"SPD", profession:"Federal Minister of Justice", img: "https://www.welt.de/img/politik/deutschland/mobile157946066/8312502207-ci102l-w1024/Heiko-Maas.jpg" },
              { id: 8, name: 'Andrea Nahles', party:"SPD", profession:"Federal Minister for Labor ", img: "http://www.bmas.de/SharedDocs/Bilder/EN/persons-of-ministry/pressefoto-andrea-nahles-download.jpg?__blob=wide&v=2" },
              { id: 9, name: 'Christian Schmidt', party:"CSU", profession:"Federal Minister for Agriculture", img: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0f/Christian_Schmidt_%28CSU%29_2013.jpg/1200px-Christian_Schmidt_%28CSU%29_2013.jpg" },
              { id: 10, name: 'Ursula von der Leyen', party:"CDU", profession:"Federal Minister of Defense", img: "http://img.zeit.de/politik/deutschland/2014-06/leyen/wide__820x461__desktop" },
              { id: 11, name: 'Katarina Barley', party:"SPD", profession:"Federal Minister for Family", img: "https://www.spd.de/fileadmin/Bilder/Personen/Pressefoto_Katarina_Barley_neu_2016_72_Knoll_dpi.jpg" },
              { id: 12, name: 'Hermann Gröhe', party:"CDU", profession:"Federal Minister of Health", img: "https://www.bundestag.de/image/240996/3x4/284/379/93109a705877101937cbe6fbd407ed4e/tI/groehe_hermann_gross.jpg" },
              { id: 13, name: 'Alexander Dobrindt', party:"CSU", profession:"Federal Minister for Transport", img: "http://media-cdn.sueddeutsche.de/image/sz.1.1807101/940x528?v=1383129704000" },
              { id: 14, name: 'Barbara Hendricks', party:"SPD", profession:"Federal Minister for the Environment", img: "http://img.zeit.de/wirtschaft/2016-02/barbara-hendricks-wohnungsbau-2/wide__1300x731" },
              { id: 15, name: 'Johanna Wanka', party:"CDU", profession:"Federal Minister for Education and Research", img: "http://www.spektrum.de/fm/912/thumbnails/JohannaWanka_34408050_DPA.jpg.1265305.jpg" },
              { id: 16, name: 'Gerd Müller', party:"CSU", profession:"Federal Minister for Development", img: "https://www.welt.de/img/politik/deutschland/mobile134424194/7422508627-ci102l-w1024/Bundesentwicklungsminister-Gerd-Mueller.jpg" },
              { id: 17, name: 'Peter Altmaier', party:"CDU", profession:"Chancellery minister", img: "https://upload.wikimedia.org/wikipedia/commons/7/7a/Peter_Altmaier_CDU_Parteitag_2014_by_Olaf_Kosinsky-2.jpg" },
              { id: 18, name: 'Cem Özdemir', party:"Bündnis 90/Die Grünen", profession:"Party Chairman Bündnis 90/Die Grünen", img: "http://i.huffpost.com/gen/2706608/images/o-ZDEMIR-facebook.jpg" },
              { id: 19, name: 'Simone Peter', party:"Bündnis 90/Die Grünen", profession:"Party Chairman Bündnis 90/Die Grünen", img: "http://www.br.de/radio/bayern2/politik/radiowelt/simone-peter-gruene-114~_v-img__16__9__xl_-d31c35f8186ebeb80b0cd843a7c267a0e0c81647.jpg?version=a969a" },
              { id: 20, name: 'Winfried Kretschmann', party:"Bündnis 90/Die Grünen", profession:"Prime Minister of Baden Württemberg", img: "https://www.gruene-bw.de/wp-content/uploads/2015/10/Kretschmann-auf-Stuhl-2015-Kreis-400x400.jpg" },
              { id: 21, name: 'Sahra Wagenknecht ', party:"Die Linken", profession:"Politician Die Linken", img: "https://bilder.t-online.de/b/65/88/66/84/id_65886684/610/tid_da/sahra-wagenknecht-die-linke-.jpg" },
              { id: 22, name: 'Bernd Riexinger', party:"Die Linken", profession:"Party Chairman Die Linken", img: "http://cdn1.spiegel.de/images/image-364394-860_panofree-bkla-364394.jpg" },
              { id: 23, name: 'Gregor Gysi', party:"Die Linken", profession:"Politician Die Linken", img: "http://bilder.t-online.de/b/78/99/89/40/id_78998940/610/tid_da/gregor-gysi-will-2017-als-direktkandidat-im-bezirk-treptow-koepenick-antreten-.jpg" },
              { id: 24, name: 'Olaf Scholz', party:"SPD", profession:"Prime Minister Hamburg", img: "http://img.zeit.de/hamburg/politik-wirtschaft/2016-01/olaf-scholz/wide__820x461__desktop" },
              { id: 25, name: 'Frauke Petry', party:"AfD", profession:"Party Chairman AfD", img: "https://www.welt.de/img/fernsehen/mobile165963081/4552505357-ci102l-w1024/Frauke-Petry-Sven-Petry.jpg" },
              { id: 26, name: 'Alexander Gauland', party:"AfD", profession:"Politician AfD", img: "http://media0.faz.net/ppmedia/aktuell/politik/3222923067/1.3442540/default/alexander-gauland-sein-vater.jpg" },
              { id: 27, name: 'Beatrix von Storch', party:"AfD", profession:"Member of EU parliament AfD", img: "http://www.goettinger-tageblatt.de/var/storage/images/gt-et/region/northeim/afd-politikerin-spricht-am-freitag-im-buergerhaus-northeim-gegendemo-angekuendigt/450833333-1-ger-DE/Von-Storch-in-Northeim_ArtikelQuer.jpg" },
              { id: 28, name: 'Christian Lindner', party:"FDP", profession:"Party Chairman FDP", img: "http://www.junge-politiker.de/wp-content/uploads/2015/01/NEU_Lindner-Christian_Druckversion.jpg" },
              { id: 29, name: 'Norbert Lammert', party:"CDU", profession:"President of the Bundestag", img: "http://cdn3.spiegel.de/images/image-1067866-galleryV9-zwsh-1067866.jpg" }

              ];

  Memory.init(cards);
})();
