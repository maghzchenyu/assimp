Pod::Spec.new do |s|
    s.name  = 'Assimp'
    s.version = '5.0.3'
    s.summary = 'Open Asset Import Library'
    s.homepage = 'http://www.assimp.org'
    s.source = { :git => 'https://github.com/ndreca/Assimp', :tag => s.version.to_s }
    s.author = { 'Adrian Andreca' => 'adrian@ndreca.com' }
    s.social_media_url = 'http://twitter.com/ndreca_com'
    s.license = { :file => 'LICENSE' }
    
    s.ios.deployment_target = '10.3'
    s.osx.deployment_target = '10.12'

    s.source_files = 'code/**/*.{cpp,c}', 'contrib/**/*.{cpp,cc,c}', 'include/assimp/Compiler/pushpack1.h', 'include/assimp/Compiler/poppack1.h', 'include/assimp/Compiler/pstdint.h', 'include/assimp/cimport.h', 'include/assimp/cexport.h', 'include/assimp/aabb.h', 'include/assimp/ai_assert.h', 'include/assimp/anim.h', 'include/assimp/camera.h', 'include/assimp/cfileio.h', 'include/assimp/color4.h', 'include/assimp/config.h', 'include/assimp/defs.h', 'include/assimp/importerdesc.h', 'include/assimp/light.h', 'include/assimp/material.h', 'include/assimp/matrix3x3.h', 'include/assimp/matrix4x4.h', 'include/assimp/MathFunctions.h', 'include/assimp/material.inl', 'include/assimp/mesh.h', 'include/assimp/metadata.h', 'include/assimp/pbrmaterial.h', 'include/assimp/postprocess.h', 'include/assimp/quaternion.h', 'include/assimp/scene.h', 'include/assimp/texture.h', 'include/assimp/types.h', 'include/assimp/vector2.h', 'include/assimp/vector3.h', 'include/assimp/version.h', 'include/assimp/vector3.inl', 'include/assimp/vector2.inl', 'include/assimp/color4.inl', 'include/assimp/matrix3x3.inl', 'include/assimp/matrix4x4.inl',  'include/assimp/quaternion.inl'

    s.preserve_paths = 'Sources/**/*'

    s.pod_target_xcconfig = {
      'GCC_PREPROCESSOR_DEFINITIONS' => 'ASSIMP_BUILD_NO_IFC_IMPORTER ASSIMP_BUILD_NO_C4D_IMPORTER',
      'HEADER_SEARCH_PATHS' => '$(PODS_TARGET_SRCROOT)/Sources/assimp $(PODS_TARGET_SRCROOT)/include $(PODS_TARGET_SRCROOT)/include/assimp $(PODS_TARGET_SRCROOT)/include/assimp/. $(PODS_TARGET_SRCROOT)/code $(PODS_TARGET_SRCROOT)/contrib/openddlparser/include $(PODS_TARGET_SRCROOT)/contrib/irrXML $(PODS_TARGET_SRCROOT)/contrib/unzip $(PODS_TARGET_SRCROOT)/contrib/rapidjson/include',
      'CLANG_WARN_DOCUMENTATION_COMMENTS' => 'NO',
      'CLANG_WARN_COMMA' => 'NO',
      'CLANG_WARN_UNREACHABLE_CODE' => 'NO',
      'CLANG_WARN_RANGE_LOOP_ANALYSIS' => 'NO',
      'GCC_WARN_UNUSED_FUNCTION' => 'NO',
      'GCC_WARN_UNUSED_VALUE' => 'NO',
      'GCC_WARN_UNUSED_VARIABLE' => 'NO',
      'GCC_WARN_64_TO_32_BIT_CONVERSION' => 'NO',
      'GCC_WARN_UNINITIALIZED_AUTOS' => 'NO',
    }
end
