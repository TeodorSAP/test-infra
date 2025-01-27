// Code generated by rendertemplates. DO NOT EDIT.

package releases

// List of currently supported releases
var (
	Release25 = mustParse("2.5")
	Release24 = mustParse("2.4")
	Release23 = mustParse("2.3")
	Release22 = mustParse("2.2")
)

// GetAllKymaReleases returns all supported kyma release branches
func GetAllKymaReleases() []*SupportedRelease {
	return []*SupportedRelease{
		Release24,
		Release23,
		Release22,
	}
}

// GetNextKymaRelease returns the version of kyma currently under development
func GetNextKymaRelease() *SupportedRelease {
	return Release25
}
