.class public Lc8/mwk;
.super Ljava/lang/Object;
.source "ToastBreak.java"


# static fields
.field private static toast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showToast(Ljava/lang/String;J)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "time"    # J

    .prologue
    .line 15
    sget-object v0, Lc8/mwk;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 16
    invoke-static {}, Lc8/Dvk;->getInstance()Lc8/Dvk;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Dvk;->getApplication()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lc8/mwk;->toast:Landroid/widget/Toast;

    .line 18
    :cond_0
    sget-object v0, Lc8/mwk;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 19
    sget-object v0, Lc8/mwk;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 20
    return-void
.end method
