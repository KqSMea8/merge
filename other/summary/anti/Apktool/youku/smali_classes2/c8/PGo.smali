.class public final Lc8/PGo;
.super Ljava/lang/Object;
.source "VipToastUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/QGo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 43
    invoke-static {}, Lc8/QGo;->access$000()Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    invoke-static {}, Lc8/QGo;->access$000()Landroid/widget/Toast;

    move-result-object v0

    sget v1, Lc8/QGo;->mDuration:I

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 45
    invoke-static {}, Lc8/QGo;->access$000()Landroid/widget/Toast;

    move-result-object v0

    sget-object v1, Lc8/QGo;->mMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-static {}, Lc8/QGo;->access$000()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 48
    :cond_0
    return-void
.end method
