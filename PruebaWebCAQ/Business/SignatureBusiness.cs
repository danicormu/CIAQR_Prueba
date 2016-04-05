using System.Collections.Generic;
using PruebaWebCAQ.Data;
using PruebaWebCAQ.Domain;

namespace PruebaWebCAQ.Business
{
    class SignatureBusiness
    {
        SignatureData data = new SignatureData();

        public List<Signature> getAllSignatureService()
        {
            return data.getSignatures();
        }

        public string createSignatureService(Signature signature)
        {
            string success = "";
            if (data.addSignature(signature))
                success = "Materia agregada con éxito";
            else
                success = "La materia no ha sido agregada. Revise su conexión a la red o contacte a su proveedor de servicios";
            return success;
        }

        public string updateSignatureService(Signature signature)
        {
            string success = "";
            if(data.updateSignature(signature))
                success = "Materia actualizada con éxito";
            else
                success = "La materia no ha sido actualizada. Revise su conexión a la red o contacte a su proveedor de servicios";
            return success;
        }

        public string deleteSignatureService(int id)
        {
            string success = "";
            if (data.deleteSignature(id))
                success = "Materia borrada con éxito";
            else
                success = "la materia no ha sido borrada. Revise su conexión a la red o contacte a su proveedor de servicios";
            return success;
        }
    }
}
