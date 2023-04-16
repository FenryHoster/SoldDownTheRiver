const baseURL = 'http://192.168.1.182';

export async function handleDelete(HumanId) {
  try {
    const response = await fetch(`${baseURL}/DeleteHuman?HumanId=${HumanId}`);

    if (!response.ok) {
      throw new Error(`HTTP error! status: ${response.status}`);
    }

    console.log(`Human with ID ${HumanId} has been deleted.`);
    window.location.href = '/Humans';
  } catch (error) {
    console.error('There was a problem deleting the human:', error);
  }
}
