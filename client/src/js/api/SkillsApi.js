class SkillsApi {  
  static getAllSkills() {
    const request = new Request('http://0.0.0.0:3000/skills', {
      method: 'GET',
    });

    return fetch(request).then(response => {
      return response.json();
    }).catch(error => {
      return error;
    });
  }
}

export default SkillsApi;