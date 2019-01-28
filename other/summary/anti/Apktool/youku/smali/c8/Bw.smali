.class public Lc8/Bw;
.super Ljava/lang/Object;
.source "ShareActionProvider.java"

# interfaces
.implements Lc8/Zr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Dw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShareActivityChooserModelPolicy"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Dw;


# direct methods
.method constructor <init>(Lc8/Dw;)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lc8/Bw;->this$0:Lc8/Dw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    return-void
.end method


# virtual methods
.method public onChooseActivity(Lc8/bs;Landroid/content/Intent;)Z
    .locals 2
    .param p1, "host"    # Lc8/bs;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 401
    iget-object v0, p0, Lc8/Bw;->this$0:Lc8/Dw;

    iget-object v0, v0, Lc8/Dw;->mOnShareTargetSelectedListener:Lc8/Aw;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lc8/Bw;->this$0:Lc8/Dw;

    iget-object v0, v0, Lc8/Dw;->mOnShareTargetSelectedListener:Lc8/Aw;

    iget-object v1, p0, Lc8/Bw;->this$0:Lc8/Dw;

    invoke-interface {v0, v1, p2}, Lc8/Aw;->onShareTargetSelected(Lc8/Dw;Landroid/content/Intent;)Z

    .line 405
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
