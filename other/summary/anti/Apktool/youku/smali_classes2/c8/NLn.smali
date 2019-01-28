.class public Lc8/NLn;
.super Ljava/lang/Object;
.source "AliMediaPlayer.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/QLn;->setDisplay(Landroid/view/SurfaceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/QLn;


# direct methods
.method constructor <init>(Lc8/QLn;)V
    .locals 0
    .param p1, "this$0"    # Lc8/QLn;

    .prologue
    .line 756
    iput-object p1, p0, Lc8/NLn;->this$0:Lc8/QLn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 759
    iget-object v0, p0, Lc8/NLn;->this$0:Lc8/QLn;

    invoke-virtual {v0}, Lc8/QLn;->setFrameAvailable()V

    .line 760
    return-void
.end method
