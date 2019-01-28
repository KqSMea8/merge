.class public Lc8/dcb;
.super Ljava/lang/Object;
.source "LottieAnimationView.java"

# interfaces
.implements Lc8/xcb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/hcb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/hcb;


# direct methods
.method constructor <init>(Lc8/hcb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/hcb;

    .prologue
    .line 68
    iput-object p1, p0, Lc8/dcb;->this$0:Lc8/hcb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompositionLoaded(Lc8/kcb;)V
    .locals 2
    .param p1, "composition"    # Lc8/kcb;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 70
    if-eqz p1, :cond_0

    .line 71
    iget-object v0, p0, Lc8/dcb;->this$0:Lc8/hcb;

    invoke-virtual {v0, p1}, Lc8/hcb;->setComposition(Lc8/kcb;)V

    .line 73
    :cond_0
    iget-object v0, p0, Lc8/dcb;->this$0:Lc8/hcb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/hcb;->access$002(Lc8/hcb;Lc8/Zbb;)Lc8/Zbb;

    .line 74
    return-void
.end method
