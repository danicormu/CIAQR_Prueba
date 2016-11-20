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

        public List<Signature> getSignatureByGrupoIDService(string name, string day)
        {
            return data.getSignaturesByGroupId(name, day);
        }

        public Signature getsignatureByIdService(int id)
        {
            return data.getSignatureById(id);
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

        public bool deleteSignatureService(string day,string group)
        {
            bool success = false;
            if (data.deleteSignature(day, group))
                success = true;
            return success;
        }
    }
}
