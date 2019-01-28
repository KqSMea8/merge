.class public Lc8/oZo;
.super Landroid/app/Dialog;
.source "EggDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final EGG_DIALOG_API_KEY:Ljava/lang/String; = "eggApi"

.field public static final EGG_DIALOG_API_OFFICIAL:Ljava/lang/String; = "official"

.field public static final EGG_DIALOG_API_PRE:Ljava/lang/String; = "prepare"

.field public static final EGG_DIALOG_API_TEST:Ljava/lang/String; = "test"

.field public static final EGG_DIALOG_CMS_KEY:Ljava/lang/String; = "eggCMS"

.field public static final EGG_DIALOG_CMS_NO:Ljava/lang/String; = "no"

.field public static final EGG_DIALOG_CMS_YES:Ljava/lang/String; = "yes"

.field public static final EGG_DIALOG_LOG_HIDE:Ljava/lang/String; = "hide"

.field public static final EGG_DIALOG_LOG_KEY:Ljava/lang/String; = "eggLog"

.field public static final EGG_DIALOG_LOG_SHOW:Ljava/lang/String; = "show"

.field public static final SHARE_PREFERENCE_EGGDIALOG_NAME:Ljava/lang/String; = "eggDialog"

.field public static egg_dialog_api:Ljava/lang/String;


# instance fields
.field private btn_egg_dialog_api_official:Landroid/widget/RadioButton;

.field private btn_egg_dialog_api_prepare:Landroid/widget/RadioButton;

.field private btn_egg_dialog_api_test:Landroid/widget/RadioButton;

.field private chk_egg_dialog_network:Landroid/widget/Button;

.field private chk_egg_dialog_switch_cms:Landroid/widget/CheckBox;

.field private chk_egg_dialog_switch_log:Landroid/widget/CheckBox;

.field private isShowLog:Z

.field private layout_egg_dialog_cancel:Landroid/view/View;

.field private layout_egg_dialog_set:Landroid/view/View;

.field private pre_egg_dialog_api:Ljava/lang/String;

.field private radiogroup_egg_dialog_api:Landroid/widget/RadioGroup;

.field private txt_egg_dialog_copyID:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-object v0, Lc8/oZo;->egg_dialog_api:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 61
    sget v0, Lcom/youku/phone/R$style;->EggDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 28
    iput-object v1, p0, Lc8/oZo;->layout_egg_dialog_cancel:Landroid/view/View;

    .line 29
    iput-object v1, p0, Lc8/oZo;->layout_egg_dialog_set:Landroid/view/View;

    .line 31
    iput-object v1, p0, Lc8/oZo;->radiogroup_egg_dialog_api:Landroid/widget/RadioGroup;

    .line 32
    iput-object v1, p0, Lc8/oZo;->chk_egg_dialog_switch_log:Landroid/widget/CheckBox;

    .line 33
    iput-object v1, p0, Lc8/oZo;->chk_egg_dialog_switch_cms:Landroid/widget/CheckBox;

    .line 34
    iput-object v1, p0, Lc8/oZo;->btn_egg_dialog_api_prepare:Landroid/widget/RadioButton;

    .line 35
    iput-object v1, p0, Lc8/oZo;->btn_egg_dialog_api_test:Landroid/widget/RadioButton;

    .line 36
    iput-object v1, p0, Lc8/oZo;->btn_egg_dialog_api_official:Landroid/widget/RadioButton;

    .line 37
    iput-object v1, p0, Lc8/oZo;->chk_egg_dialog_network:Landroid/widget/Button;

    .line 38
    iput-object v1, p0, Lc8/oZo;->txt_egg_dialog_copyID:Landroid/widget/TextView;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/oZo;->isShowLog:Z

    .line 57
    iput-object v1, p0, Lc8/oZo;->pre_egg_dialog_api:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 28
    iput-object v1, p0, Lc8/oZo;->layout_egg_dialog_cancel:Landroid/view/View;

    .line 29
    iput-object v1, p0, Lc8/oZo;->layout_egg_dialog_set:Landroid/view/View;

    .line 31
    iput-object v1, p0, Lc8/oZo;->radiogroup_egg_dialog_api:Landroid/widget/RadioGroup;

    .line 32
    iput-object v1, p0, Lc8/oZo;->chk_egg_dialog_switch_log:Landroid/widget/CheckBox;

    .line 33
    iput-object v1, p0, Lc8/oZo;->chk_egg_dialog_switch_cms:Landroid/widget/CheckBox;

    .line 34
    iput-object v1, p0, Lc8/oZo;->btn_egg_dialog_api_prepare:Landroid/widget/RadioButton;

    .line 35
    iput-object v1, p0, Lc8/oZo;->btn_egg_dialog_api_test:Landroid/widget/RadioButton;

    .line 36
    iput-object v1, p0, Lc8/oZo;->btn_egg_dialog_api_official:Landroid/widget/RadioButton;

    .line 37
    iput-object v1, p0, Lc8/oZo;->chk_egg_dialog_network:Landroid/widget/Button;

    .line 38
    iput-object v1, p0, Lc8/oZo;->txt_egg_dialog_copyID:Landroid/widget/TextView;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/oZo;->isShowLog:Z

    .line 57
    iput-object v1, p0, Lc8/oZo;->pre_egg_dialog_api:Ljava/lang/String;

    .line 66
    return-void
.end method

.method static synthetic access$002(Lc8/oZo;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/oZo;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lc8/oZo;->isShowLog:Z

    return p1
.end method

.method private doSet()V
    .locals 3

    .prologue
    .line 160
    invoke-virtual {p0}, Lc8/oZo;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "eggLog"

    iget-boolean v0, p0, Lc8/oZo;->isShowLog:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "show"

    :goto_0
    invoke-static {v1, v2, v0}, Lc8/oZo;->savePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lc8/VLj;->setLog()V

    .line 162
    invoke-static {}, Lc8/ben;->getInstance()Lc8/ben;

    move-result-object v1

    iget-boolean v0, p0, Lc8/oZo;->isShowLog:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "show"

    :goto_1
    invoke-virtual {v1, v0}, Lc8/ben;->setLog(Ljava/lang/String;)V

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u63a5\u53e3:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lc8/oZo;->egg_dialog_api:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",\u65e5\u5fd7:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lc8/oZo;->isShowLog:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/Iin;->showTips(Ljava/lang/String;)V

    .line 166
    sget-object v0, Lc8/oZo;->egg_dialog_api:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lc8/oZo;->egg_dialog_api:Ljava/lang/String;

    iget-object v1, p0, Lc8/oZo;->pre_egg_dialog_api:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lc8/oZo;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "eggApi"

    sget-object v2, Lc8/oZo;->egg_dialog_api:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lc8/oZo;->savePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lc8/VLj;->setApi()V

    .line 169
    invoke-static {}, Lc8/ben;->getInstance()Lc8/ben;

    move-result-object v0

    sget-object v1, Lc8/oZo;->egg_dialog_api:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc8/ben;->setApi(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lc8/oZo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/oZo;->killAllProcesses(Landroid/content/Context;)V

    .line 172
    :cond_0
    return-void

    .line 160
    :cond_1
    const-string/jumbo v0, "hide"

    goto :goto_0

    .line 162
    :cond_2
    const-string/jumbo v0, "hide"

    goto :goto_1
.end method

.method public static getPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 183
    if-eqz p0, :cond_1

    .line 184
    const-string/jumbo v2, "eggDialog"

    .line 185
    invoke-static {}, Lc8/LWc;->hasGingerbread()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    .line 184
    :goto_0
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 186
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 188
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :goto_1
    return-object v1

    .line 185
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 188
    :cond_1
    const-string/jumbo v1, ""

    goto :goto_1
.end method

.method private initView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 81
    sget v0, Lcom/youku/phone/R$id;->layout_egg_dialog_cancel:I

    invoke-virtual {p0, v0}, Lc8/oZo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lc8/oZo;->layout_egg_dialog_cancel:Landroid/view/View;

    .line 82
    sget v0, Lcom/youku/phone/R$id;->layout_egg_dialog_set:I

    invoke-virtual {p0, v0}, Lc8/oZo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lc8/oZo;->layout_egg_dialog_set:Landroid/view/View;

    .line 83
    iget-object v0, p0, Lc8/oZo;->layout_egg_dialog_cancel:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lc8/oZo;->layout_egg_dialog_set:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    sget v0, Lcom/youku/phone/R$id;->radiogroup_egg_dialog_api:I

    invoke-virtual {p0, v0}, Lc8/oZo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lc8/oZo;->radiogroup_egg_dialog_api:Landroid/widget/RadioGroup;

    .line 87
    iget-object v0, p0, Lc8/oZo;->radiogroup_egg_dialog_api:Landroid/widget/RadioGroup;

    new-instance v1, Lc8/kZo;

    invoke-direct {v1, p0}, Lc8/kZo;-><init>(Lc8/oZo;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 99
    sget v0, Lcom/youku/phone/R$id;->btn_egg_dialog_api_test:I

    invoke-virtual {p0, v0}, Lc8/oZo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lc8/oZo;->btn_egg_dialog_api_test:Landroid/widget/RadioButton;

    .line 100
    iget-object v0, p0, Lc8/oZo;->btn_egg_dialog_api_test:Landroid/widget/RadioButton;

    const-string/jumbo v1, "\u6d4b\u8bd5"

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lc8/oZo;->btn_egg_dialog_api_test:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 102
    sget v0, Lcom/youku/phone/R$id;->btn_egg_dialog_api_test2:I

    invoke-virtual {p0, v0}, Lc8/oZo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lc8/oZo;->btn_egg_dialog_api_prepare:Landroid/widget/RadioButton;

    .line 103
    iget-object v0, p0, Lc8/oZo;->btn_egg_dialog_api_prepare:Landroid/widget/RadioButton;

    const-string/jumbo v1, "\u9884\u53d1"

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lc8/oZo;->btn_egg_dialog_api_prepare:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 105
    sget v0, Lcom/youku/phone/R$id;->btn_egg_dialog_api_official:I

    invoke-virtual {p0, v0}, Lc8/oZo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lc8/oZo;->btn_egg_dialog_api_official:Landroid/widget/RadioButton;

    .line 107
    const-string/jumbo v0, "prepare"

    sget-object v1, Lc8/oZo;->egg_dialog_api:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lc8/oZo;->btn_egg_dialog_api_prepare:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 109
    iget-object v0, p0, Lc8/oZo;->btn_egg_dialog_api_test:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 110
    iget-object v0, p0, Lc8/oZo;->btn_egg_dialog_api_official:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 111
    const-string/jumbo v0, "prepare"

    sput-object v0, Lc8/oZo;->egg_dialog_api:Ljava/lang/String;

    iput-object v0, p0, Lc8/oZo;->pre_egg_dialog_api:Ljava/lang/String;

    .line 124
    :cond_0
    :goto_0
    sget-boolean v0, Lc8/VLj;->isShowLog:Z

    iput-boolean v0, p0, Lc8/oZo;->isShowLog:Z

    .line 125
    sget v0, Lcom/youku/phone/R$id;->chk_egg_dialog_switch_log:I

    invoke-virtual {p0, v0}, Lc8/oZo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lc8/oZo;->chk_egg_dialog_switch_log:Landroid/widget/CheckBox;

    .line 126
    iget-object v0, p0, Lc8/oZo;->chk_egg_dialog_switch_log:Landroid/widget/CheckBox;

    new-instance v1, Lc8/lZo;

    invoke-direct {v1, p0}, Lc8/lZo;-><init>(Lc8/oZo;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 132
    iget-object v0, p0, Lc8/oZo;->chk_egg_dialog_switch_log:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lc8/oZo;->isShowLog:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 134
    sget v0, Lcom/youku/phone/R$id;->chk_egg_dialog_switch_cms:I

    invoke-virtual {p0, v0}, Lc8/oZo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lc8/oZo;->chk_egg_dialog_switch_cms:Landroid/widget/CheckBox;

    .line 135
    iget-object v0, p0, Lc8/oZo;->chk_egg_dialog_switch_cms:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 137
    sget v0, Lcom/youku/phone/R$id;->chk_egg_dialog_network:I

    invoke-virtual {p0, v0}, Lc8/oZo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lc8/oZo;->chk_egg_dialog_network:Landroid/widget/Button;

    .line 138
    iget-object v0, p0, Lc8/oZo;->chk_egg_dialog_network:Landroid/widget/Button;

    new-instance v1, Lc8/mZo;

    invoke-direct {v1, p0}, Lc8/mZo;-><init>(Lc8/oZo;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    sget v0, Lcom/youku/phone/R$id;->txt_egg_dialog_copyID:I

    invoke-virtual {p0, v0}, Lc8/oZo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc8/oZo;->txt_egg_dialog_copyID:Landroid/widget/TextView;

    .line 148
    iget-object v0, p0, Lc8/oZo;->txt_egg_dialog_copyID:Landroid/widget/TextView;

    new-instance v1, Lc8/nZo;

    invoke-direct {v1, p0}, Lc8/nZo;-><init>(Lc8/oZo;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    return-void

    .line 112
    :cond_1
    const-string/jumbo v0, "test"

    sget-object v1, Lc8/oZo;->egg_dialog_api:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    iget-object v0, p0, Lc8/oZo;->btn_egg_dialog_api_prepare:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 114
    iget-object v0, p0, Lc8/oZo;->btn_egg_dialog_api_test:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 115
    iget-object v0, p0, Lc8/oZo;->btn_egg_dialog_api_official:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 116
    const-string/jumbo v0, "test"

    sput-object v0, Lc8/oZo;->egg_dialog_api:Ljava/lang/String;

    iput-object v0, p0, Lc8/oZo;->pre_egg_dialog_api:Ljava/lang/String;

    goto :goto_0

    .line 117
    :cond_2
    const-string/jumbo v0, "official"

    sget-object v1, Lc8/oZo;->egg_dialog_api:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lc8/oZo;->btn_egg_dialog_api_prepare:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 119
    iget-object v0, p0, Lc8/oZo;->btn_egg_dialog_api_test:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 120
    iget-object v0, p0, Lc8/oZo;->btn_egg_dialog_api_official:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 121
    const-string/jumbo v0, "official"

    sput-object v0, Lc8/oZo;->egg_dialog_api:Ljava/lang/String;

    iput-object v0, p0, Lc8/oZo;->pre_egg_dialog_api:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private killAllProcesses(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 223
    invoke-static {}, Lc8/Oy;->getInstance()Lc8/Oy;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Oy;->clearActivityStack()V

    .line 224
    invoke-direct {p0, p1}, Lc8/oZo;->killChildProcesses(Landroid/content/Context;)V

    .line 226
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_0
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "killAllProcesses"

    invoke-static {v1, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private killChildProcesses(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 210
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    int-to-long v4, v3

    .line 211
    .local v4, "uid":J
    const-string/jumbo v3, "activity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 212
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 213
    .local v1, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    int-to-long v6, v6

    cmp-long v6, v6, v4

    if-nez v6, :cond_0

    iget-object v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 214
    iget v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v6}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v4    # "uid":J
    :catch_0
    move-exception v2

    .line 218
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "killChildProcesses"

    invoke-static {v3, v2}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 220
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method public static savePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 175
    if-eqz p0, :cond_0

    .line 176
    const-string/jumbo v2, "eggDialog"

    .line 177
    invoke-static {}, Lc8/LWc;->hasGingerbread()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    .line 176
    :goto_0
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 178
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 180
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    return-void

    .line 177
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static showEggDialog(Landroid/content/Context;)V
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 69
    new-instance v0, Lc8/oZo;

    invoke-direct {v0, p0}, Lc8/oZo;-><init>(Landroid/content/Context;)V

    .line 70
    .local v0, "mEggDialog":Lc8/oZo;
    invoke-virtual {v0}, Lc8/oZo;->show()V

    .line 71
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/youku/phone/R$id;->layout_egg_dialog_cancel:I

    if-ne v0, v1, :cond_1

    .line 195
    invoke-virtual {p0}, Lc8/oZo;->dismiss()V

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/youku/phone/R$id;->layout_egg_dialog_set:I

    if-ne v0, v1, :cond_0

    .line 197
    invoke-direct {p0}, Lc8/oZo;->doSet()V

    .line 198
    invoke-virtual {p0}, Lc8/oZo;->dismiss()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 76
    sget v0, Lcom/youku/phone/R$layout;->egg_dialog_view:I

    invoke-virtual {p0, v0}, Lc8/oZo;->setContentView(I)V

    .line 77
    invoke-direct {p0}, Lc8/oZo;->initView()V

    .line 78
    return-void
.end method
