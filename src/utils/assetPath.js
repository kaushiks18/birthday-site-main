// Utility function to handle asset paths for GitHub Pages deployment
export function getAssetPath(path) {
  // Remove leading slash if present
  const cleanPath = path.startsWith('/') ? path.slice(1) : path;
  
  // In production (GitHub Pages), prefix with repository name
  if (typeof window !== 'undefined') {
    const basePath = window.location.pathname.split('/')[1];
    if (basePath && basePath !== '') {
      return `/${basePath}/${cleanPath}`;
    }
  }
  
  // Fallback to original path
  return `/${cleanPath}`;
}
