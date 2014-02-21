component{
	property name='breweryService' inject='breweryService';

		event.paramValue( name='beerID', value='not_supplied' );		
		prc.beer = BreweryService.getBeer( rc.beerID );		
	}
		event.paramValue( name='beerID', value='not_supplied' );		
		prc.beer = BreweryService.getBeer( rc.beerID );		
	}
		event.paramValue( name='beerID', value='not_supplied' );
		var beer = BreweryService.getBeer( rc.beerID );
		if( !isnull(beer) ){
			
			// Save some typing
			for( var field in listToArray( 'name,category,style,description,ibu,srm,upc' ) ) {
				evaluate( "beer.set#field#( form[field] )" );
			}				
			beer.setUpdated( "#dateFormat(now(),"yyyy-mm-dd")# #timeFormat(now(),"HH:mm:ss")#" );			
			beer.save();			
		}		
		setNextEvent( event="beer.view", queryString="beerID=#HTMLEditFormat( rc.beerID )#" );
	}
}