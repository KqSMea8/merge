.class public Lc8/TLn;
.super Ljava/lang/Object;
.source "EGLUtil.java"


# static fields
.field private static EGL_CONTEXT_CLIENT_VERSION:I

.field private static EGL_OPENGL_ES2_BIT:I

.field private static TAG:Ljava/lang/String;

.field private static inited:Z

.field private static mEGL:Ljavax/microedition/khronos/egl/EGL10;

.field private static mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private static mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private static mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private static mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private static mSHolder:Landroid/view/SurfaceHolder;

.field private static mSurfaceHeight:I

.field private static mSurfaceWidth:I

.field private static mVersions:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 18
    sput-object v2, Lc8/TLn;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    .line 19
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    sput-object v0, Lc8/TLn;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 20
    sput-object v2, Lc8/TLn;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 21
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sput-object v0, Lc8/TLn;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 22
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    sput-object v0, Lc8/TLn;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 24
    sput-object v2, Lc8/TLn;->mSHolder:Landroid/view/SurfaceHolder;

    .line 26
    const-string/jumbo v0, "EGLUtil"

    sput-object v0, Lc8/TLn;->TAG:Ljava/lang/String;

    .line 28
    sput-boolean v1, Lc8/TLn;->inited:Z

    .line 30
    sput v1, Lc8/TLn;->mSurfaceWidth:I

    .line 31
    sput v1, Lc8/TLn;->mSurfaceHeight:I

    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lc8/TLn;->mVersions:[I

    .line 35
    const/4 v0, 0x4

    sput v0, Lc8/TLn;->EGL_OPENGL_ES2_BIT:I

    .line 36
    const/16 v0, 0x3098

    sput v0, Lc8/TLn;->EGL_CONTEXT_CLIENT_VERSION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static InitEGL()Z
    .locals 16

    .prologue
    const/4 v12, 0x4

    const/4 v15, 0x3

    const/4 v14, 0x2

    const/4 v4, 0x1

    const/4 v10, 0x0

    .line 51
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v15, v1}, Landroid/opengl/GLDebugHelper;->wrap(Ljavax/microedition/khronos/egl/EGL;ILjava/io/Writer;)Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    sput-object v0, Lc8/TLn;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    .line 53
    sget-object v0, Lc8/TLn;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v0, :cond_0

    move v4, v10

    .line 144
    .local v2, "config_attribs":[I
    .local v3, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    .local v5, "num_config":[I
    :goto_0
    return v4

    .line 58
    .end local v2    # "config_attribs":[I
    .end local v3    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v5    # "num_config":[I
    :cond_0
    sget-object v0, Lc8/TLn;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    sput-object v0, Lc8/TLn;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 60
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Lc8/TLn;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v1, :cond_1

    move v4, v10

    .line 62
    goto :goto_0

    .line 65
    :cond_1
    sget-object v0, Lc8/TLn;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Lc8/TLn;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v11, Lc8/TLn;->mVersions:[I

    invoke-interface {v0, v1, v11}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-nez v0, :cond_2

    move v4, v10

    .line 67
    goto :goto_0

    .line 70
    :cond_2
    const/4 v0, 0x5

    new-array v2, v0, [I

    const/16 v0, 0x3040

    aput v0, v2, v10

    sget v0, Lc8/TLn;->EGL_OPENGL_ES2_BIT:I

    aput v0, v2, v4

    const/16 v0, 0x3033

    aput v0, v2, v14

    aput v12, v2, v15

    const/16 v0, 0x3038

    aput v0, v2, v12

    .line 80
    .restart local v2    # "config_attribs":[I
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 81
    .restart local v3    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    new-array v5, v4, [I

    .line 83
    .restart local v5    # "num_config":[I
    sget-object v0, Lc8/TLn;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Lc8/TLn;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_3

    move v4, v10

    .line 85
    goto :goto_0

    .line 88
    :cond_3
    aget-object v0, v3, v10

    sput-object v0, Lc8/TLn;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 91
    sget-object v0, Lc8/TLn;->mSHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_4

    sget-object v0, Lc8/TLn;->mSHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    move v4, v10

    .line 93
    goto :goto_0

    .line 96
    :cond_5
    :try_start_0
    sget-object v0, Lc8/TLn;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Lc8/TLn;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v11, Lc8/TLn;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v12, Lc8/TLn;->mSHolder:Landroid/view/SurfaceHolder;

    const/4 v13, 0x0

    invoke-interface {v0, v1, v11, v12, v13}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    sput-object v0, Lc8/TLn;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_1
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Lc8/TLn;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v1, :cond_6

    move v4, v10

    .line 102
    goto :goto_0

    .line 97
    :catch_0
    move-exception v7

    .line 98
    .local v7, "e":Ljava/lang/Exception;
    sget-object v0, Lc8/TLn;->TAG:Ljava/lang/String;

    invoke-static {v0, v7}, Lc8/HOm;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 105
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_6
    new-array v9, v4, [I

    .line 106
    .local v9, "surface_width":[I
    new-array v8, v4, [I

    .line 107
    .local v8, "surface_height":[I
    sget-object v0, Lc8/TLn;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Lc8/TLn;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v11, Lc8/TLn;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    const/16 v12, 0x3057

    invoke-interface {v0, v1, v11, v12, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lc8/TLn;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Lc8/TLn;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v11, Lc8/TLn;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    const/16 v12, 0x3056

    invoke-interface {v0, v1, v11, v12, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    move v4, v10

    .line 109
    goto/16 :goto_0

    .line 112
    :cond_8
    aget v0, v9, v10

    sput v0, Lc8/TLn;->mSurfaceWidth:I

    .line 113
    aget v0, v8, v10

    sput v0, Lc8/TLn;->mSurfaceHeight:I

    .line 116
    sget v0, Lc8/TLn;->mSurfaceWidth:I

    if-eqz v0, :cond_9

    sget v0, Lc8/TLn;->mSurfaceHeight:I

    if-nez v0, :cond_a

    :cond_9
    move v4, v10

    .line 118
    goto/16 :goto_0

    .line 120
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSurfaceWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lc8/TLn;->mSurfaceWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",mSurfaceHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lc8/TLn;->mSurfaceHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    new-array v6, v15, [I

    sget v0, Lc8/TLn;->EGL_CONTEXT_CLIENT_VERSION:I

    aput v0, v6, v10

    aput v14, v6, v4

    const/16 v0, 0x3038

    aput v0, v6, v14

    .line 127
    .local v6, "context_attrib":[I
    sget-object v0, Lc8/TLn;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Lc8/TLn;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v11, Lc8/TLn;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v12, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v11, v12, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    sput-object v0, Lc8/TLn;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 129
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Lc8/TLn;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_b

    move v4, v10

    .line 131
    goto/16 :goto_0

    .line 135
    :cond_b
    sget-object v0, Lc8/TLn;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Lc8/TLn;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v11, Lc8/TLn;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v12, Lc8/TLn;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v13, Lc8/TLn;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v11, v12, v13}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_c

    move v4, v10

    .line 137
    goto/16 :goto_0

    .line 140
    :cond_c
    sput-boolean v4, Lc8/TLn;->inited:Z

    goto/16 :goto_0
.end method

.method public static ReleaseEGL()V
    .locals 5

    .prologue
    .line 177
    sget-object v0, Lc8/TLn;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v0, v1, :cond_2

    .line 178
    sget-object v0, Lc8/TLn;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Lc8/TLn;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 181
    sget-object v0, Lc8/TLn;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq v0, v1, :cond_0

    .line 183
    sget-object v0, Lc8/TLn;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Lc8/TLn;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Lc8/TLn;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 188
    :cond_0
    sget-object v0, Lc8/TLn;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_1

    .line 189
    sget-object v0, Lc8/TLn;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Lc8/TLn;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Lc8/TLn;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 194
    :cond_1
    sget-object v0, Lc8/TLn;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Lc8/TLn;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 198
    :cond_2
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    sput-object v0, Lc8/TLn;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 199
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    sput-object v0, Lc8/TLn;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 200
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sput-object v0, Lc8/TLn;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 202
    const/4 v0, 0x0

    sput-object v0, Lc8/TLn;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    .line 203
    return-void
.end method

.method public static UpdateSize([I)V
    .locals 8
    .param p0, "size"    # [I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 160
    sget-boolean v2, Lc8/TLn;->inited:Z

    if-nez v2, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    new-array v1, v7, [I

    .line 165
    .local v1, "surface_width":[I
    new-array v0, v7, [I

    .line 167
    .local v0, "surface_height":[I
    sget-object v2, Lc8/TLn;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Lc8/TLn;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v4, Lc8/TLn;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    const/16 v5, 0x3057

    invoke-interface {v2, v3, v4, v5, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lc8/TLn;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Lc8/TLn;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v4, Lc8/TLn;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    const/16 v5, 0x3056

    invoke-interface {v2, v3, v4, v5, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    aget v2, v1, v6

    sput v2, Lc8/TLn;->mSurfaceWidth:I

    aput v2, p0, v6

    .line 172
    aget v2, v0, v6

    sput v2, Lc8/TLn;->mSurfaceHeight:I

    aput v2, p0, v7

    goto :goto_0
.end method

.method public static UpdateSurface()V
    .locals 3

    .prologue
    .line 148
    sget-boolean v0, Lc8/TLn;->inited:Z

    if-eqz v0, :cond_0

    .line 149
    sget-object v0, Lc8/TLn;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Lc8/TLn;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Lc8/TLn;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 150
    :cond_0
    return-void
.end method

.method public static eglGetError()I
    .locals 1

    .prologue
    .line 153
    sget-boolean v0, Lc8/TLn;->inited:Z

    if-eqz v0, :cond_0

    .line 154
    sget-object v0, Lc8/TLn;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 155
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getClassPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 41
    const-class v1, Lc8/TLn;

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "strClassName":Ljava/lang/String;
    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 44
    return-object v0
.end method

.method public static setSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p0, "sh"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 48
    return-void
.end method
