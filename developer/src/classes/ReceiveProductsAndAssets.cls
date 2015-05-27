global class ReceiveProductsAndAssets {

	private static ReceiveProductsAndAssetsService service = new ReceiveProductsAndAssetsServiceImpl();
	
    webservice static hibu_vo_RetrieveAccountInfoWSResponse retrieveAccount(hibu_vo_RetrieveAccountInfoWSRequest request) {
        hibu_vo_RetrieveAccountInfoWSResponse response = new hibu_vo_RetrieveAccountInfoWSResponse();
        try{
            return service.getAccountAndRelatedInfo(request);
        }catch(Exception e){
            response.svcStatusCode = hibu_ws_ServiceCodes.hibu_ws_ServiceCodeEnum.ERROR.name();
            response.svcMessage = e.getMessage();
            response.svcTrace = e.getStackTraceString();
       }
       return response;
     }
     
}