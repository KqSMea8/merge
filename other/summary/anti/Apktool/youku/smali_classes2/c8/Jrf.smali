.class public Lc8/Jrf;
.super Landroid/opengl/GLSurfaceView;
.source "HardWareInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Lrf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnlineGLSurfaceView"
.end annotation


# instance fields
.field mRenderer:Lc8/Krf;

.field final synthetic this$0:Lc8/Lrf;


# direct methods
.method public constructor <init>(Lc8/Lrf;Landroid/content/Context;)V
    .locals 7
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0x8

    .line 1276
    iput-object p1, p0, Lc8/Jrf;->this$0:Lc8/Lrf;

    .line 1277
    invoke-direct {p0, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v6, v5

    .line 1278
    invoke-virtual/range {v0 .. v6}, Lc8/Jrf;->setEGLConfigChooser(IIIIII)V

    .line 1279
    new-instance v0, Lc8/Krf;

    invoke-direct {v0, p1}, Lc8/Krf;-><init>(Lc8/Lrf;)V

    iput-object v0, p0, Lc8/Jrf;->mRenderer:Lc8/Krf;

    .line 1280
    iget-object v0, p0, Lc8/Jrf;->mRenderer:Lc8/Krf;

    invoke-virtual {p0, v0}, Lc8/Jrf;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 1281
    return-void
.end method
