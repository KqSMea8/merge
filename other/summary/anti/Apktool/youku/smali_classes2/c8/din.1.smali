.class public Lc8/din;
.super Landroid/app/Dialog;
.source "NotificationSettingDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    sget v0, Lcom/youku/phone/R$style;->NotiSettingDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 19
    return-void
.end method

.method public static showNotiSettingDialog(Landroid/content/Context;)V
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 22
    new-instance v0, Lc8/din;

    invoke-direct {v0, p0}, Lc8/din;-><init>(Landroid/content/Context;)V

    .line 23
    .local v0, "mDialog":Lc8/din;
    invoke-virtual {v0}, Lc8/din;->show()V

    .line 24
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/youku/phone/R$id;->noti_setting_close:I

    if-ne v0, v1, :cond_1

    .line 39
    invoke-static {}, Lc8/Vhn;->notiSettingDialogNoClick()V

    .line 40
    invoke-virtual {p0}, Lc8/din;->dismiss()V

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/youku/phone/R$id;->noti_setting_bt1:I

    if-ne v0, v1, :cond_2

    .line 42
    invoke-static {}, Lc8/Vhn;->notiSettingDialogNoClick()V

    .line 43
    invoke-virtual {p0}, Lc8/din;->dismiss()V

    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/youku/phone/R$id;->noti_setting_bt2:I

    if-ne v0, v1, :cond_0

    .line 45
    invoke-virtual {p0}, Lc8/din;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc8/cin;->launchNotificationSettings(Landroid/content/Context;)V

    .line 46
    invoke-static {}, Lc8/Vhn;->notiSettingDialogYesClick()V

    .line 47
    invoke-virtual {p0}, Lc8/din;->dismiss()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 29
    sget v0, Lcom/youku/phone/R$layout;->noti_setting_dialog_view:I

    invoke-virtual {p0, v0}, Lc8/din;->setContentView(I)V

    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/din;->setCancelable(Z)V

    .line 31
    sget v0, Lcom/youku/phone/R$id;->noti_setting_close:I

    invoke-virtual {p0, v0}, Lc8/din;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    sget v0, Lcom/youku/phone/R$id;->noti_setting_bt1:I

    invoke-virtual {p0, v0}, Lc8/din;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    sget v0, Lcom/youku/phone/R$id;->noti_setting_bt2:I

    invoke-virtual {p0, v0}, Lc8/din;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    return-void
.end method
