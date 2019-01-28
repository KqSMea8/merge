.class public Lc8/ibp;
.super Ljava/lang/Object;
.source "YoukuAnimation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activityClose(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    sget v0, Lcom/youku/phone/R$anim;->activity_close_enter:I

    sget v1, Lcom/youku/phone/R$anim;->activity_close_exit:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 27
    return-void
.end method

.method public static activityOpen(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    sget v0, Lcom/youku/phone/R$anim;->activity_open_enter:I

    sget v1, Lcom/youku/phone/R$anim;->activity_open_exit:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 22
    return-void
.end method
