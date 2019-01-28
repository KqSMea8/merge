.class public Lcom/youku/ui/activity/AppAggreementDialogActivity;
.super Landroid/app/Activity;
.source "AppAggreementDialogActivity.java"


# static fields
.field public static final SHARE_PREFERENCE_AGGREEMENT_NAME:Ljava/lang/String; = "app_aggrement"


# instance fields
.field private app_agreement_content_scrollview:Landroid/widget/ScrollView;

.field private app_agreement_cutting_line_view:Landroid/view/View;

.field private app_agreement_done_bottom_relayout:Landroid/widget/RelativeLayout;

.field public broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private instanceAppVersionManager:Lc8/Eyo;

.field public intentActionShow:Ljava/lang/String;

.field private isChinaUnicomState:Z

.field public preferences:Landroid/content/SharedPreferences;

.field private relativeLayout:Landroid/widget/LinearLayout;

.field private textContentView:Landroid/widget/TextView;

.field private textDoneView:Landroid/widget/TextView;

.field private textTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    iput-object v1, p0, Lcom/youku/ui/activity/AppAggreementDialogActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 37
    const-string/jumbo v0, "showAggreementDialogAction"

    iput-object v0, p0, Lcom/youku/ui/activity/AppAggreementDialogActivity;->intentActionShow:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/youku/ui/activity/AppAggreementDialogActivity;->preferences:Landroid/content/SharedPreferences;

    .line 40
    iput-object v1, p0, Lcom/youku/ui/activity/AppAggreementDialogActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/ui/activity/AppAggreementDialogActivity;->isChinaUnicomState:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/youku/ui/activity/AppAggreementDialogActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/ui/activity/AppAggreementDialogActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/youku/ui/activity/AppAggreementDialogActivity;->isChinaUnicomState:Z

    return v0
.end method

.method public static synthetic access$100(Lcom/youku/ui/activity/AppAggreementDialogActivity;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "x0"    # Lcom/youku/ui/activity/AppAggreementDialogActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/youku/ui/activity/AppAggreementDialogActivity;->editor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method private isOutOfBounds(Landroid/app/Activity;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 244
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 245
    .local v2, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 246
    .local v3, "y":I
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v1

    .line 247
    .local v1, "slop":I
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 248
    .local v0, "decorView":Landroid/view/View;
    neg-int v4, v1

    if-lt v2, v4, :cond_0

    neg-int v4, v1

    if-lt v3, v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v1

    if-gt v2, v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v1

    if-le v3, v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private matchDevice()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 115
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 116
    .local v4, "phone_model":Ljava/lang/String;
    iget-object v5, p0, Lcom/youku/ui/activity/AppAggreementDialogActivity;->relativeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 117
    .local v0, "layoutParames":Landroid/view/ViewGroup$LayoutParams;
    sget-boolean v5, Lc8/VLj;->isTablet:Z

    if-eqz v5, :cond_3

    .line 118
    invoke-virtual {p0}, Lcom/youku/ui/activity/AppAggreementDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v6, :cond_1

    .line 119
    sget v5, Lc8/NHg;->wt:I

    sget v6, Lc8/NHg;->ht:I

    if-le v5, v6, :cond_0

    .line 120
    sget v5, Lc8/NHg;->wt:I

    shl-int/lit8 v5, v5, 0x1

    div-int/lit8 v5, v5, 0x3

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 121
    sget v5, Lc8/NHg;->ht:I

    shl-int/lit8 v5, v5, 0x1

    div-int/lit8 v5, v5, 0x3

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 157
    :goto_0
    iget-object v5, p0, Lcom/youku/ui/activity/AppAggreementDialogActivity;->relativeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    iget-object v5, p0, Lcom/youku/ui/activity/AppAggreementDialogActivity;->app_agreement_content_scrollview:Landroid/widget/ScrollView;

    invoke-virtual {v5}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 160
    .local v2, "layoutParamsScrollView":Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v5, p0, Lcom/youku/ui/activity/AppAggreementDialogActivity;->isChinaUnicomState:Z

    if-eqz v5, :cond_7

    .line 161
    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    mul-int/lit8 v5, v5, 0x11

    div-int/lit8 v5, v5, 0x18

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 165
    :goto_1
    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 166
    iget-object v5, p0, Lcom/youku/ui/activity/AppAggreementDialogActivity;->app_agreement_content_scrollview:Landroid/widget/ScrollView;

    invoke-virtual {v5, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "=====layoutParamsScrollView height==="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "=====layoutParamsScrollView width==="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    iget-object v5, p0, Lcom/youku/ui/activity/AppAggreementDialogActivity;->textTitleView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 171
    .local v3, "layoutParamsTitle":Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v5, p0, Lcom/youku/ui/activity/AppAggreementDialogActivity;->isChinaUnicomState:Z

    if-eqz v5, :cond_8

    .line 172
    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    shl-int/lit8 v5, v5, 0x2

    div-int/lit8 v5, v5, 0x18

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 176
    :goto_2
    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 177
    iget-object v5, p0, Lcom/youku/ui/activity/AppAggreementDialogActivity;->textTitleView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "=====layoutParamsTitle height==="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "=====layoutParamsTitle width==="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    iget-object v5, p0, Lcom/youku/ui/activity/AppAggreementDialogActivity;->app_agreement_done_bottom_relayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 182
    .local v1, "layoutParamsBottom":Landroid/widget/LinearLayout$LayoutParams;
    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x18

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 183
    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 184
    iget-object v5, p0, Lcom/youku/ui/activity/AppAggreementDialogActivity;->app_agreement_done_bottom_relayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "=====app_agreement_done_bottom_relayout height==="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "=====app_agreement_done_bottom_relayout width==="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    return-void

    .line 123
    .end local v1    # "layoutParamsBottom":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "layoutParamsScrollView":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "layoutParamsTitle":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    sget v5, Lc8/NHg;->ht:I

    shl-int/lit8 v5, v5, 0x1

    div-int/lit8 v5, v5, 0x3

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 124
    sget v5, Lc8/NHg;->wt:I

    shl-int/lit8 v5, v5, 0x1

    div-int/lit8 v5, v5, 0x3

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_0

    .line 127
    :cond_1
    sget v5, Lc8/NHg;->wt:I

    sget v6, Lc8/NHg;->ht:I

    if-le v5, v6, :cond_2

    .line 128
    sget v5, Lc8/NHg;->ht:I

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x4

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 129
    sget v5, Lc8/NHg;->wt:I

    shl-int/lit8 v5, v5, 0x1

    div-int/lit8 v5, v5, 0x3

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_0

    .line 131
    :cond_2
    sget v5, Lc8/NHg;->wt:I

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x4

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 132
    sget v5, Lc8/NHg;->ht:I

    shl-int/lit8 v5, v5, 0x1

    div-int/lit8 v5, v5, 0x3

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_0

    .line 136
    :cond_3
    invoke-virtual {p0}, Lcom/youku/ui/activity/AppAggreementDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v6, :cond_6

    .line 138
    const-string/jumbo v5, "GT-P1000"

    invoke-virtual {v5, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 139
    sget v5, Lc8/NHg;->ht:I

    shl-int/lit8 v5, v5, 0x1

    div-int/lit8 v5, v5, 0x3

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 140
    sget v5, Lc8/NHg;->wt:I

    shl-int/lit8 v5, v5, 0x1

    div-int/lit8 v5, v5, 0x3

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_0

    .line 142
    :cond_4
    sget v5, Lc8/NHg;->ht:I

    sget v6, Lc8/NHg;->wt:I

    if-le v5, v6, :cond_5

    .line 143
    sget v5, Lc8/NHg;->ht:I

    shl-int/lit8 v5, v5, 0x1

    div-int/lit8 v5, v5, 0x3

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 144
    sget v5, Lc8/NHg;->wt:I

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x4

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_0

    .line 146
    :cond_5
    sget v5, Lc8/NHg;->wt:I

    shl-int/lit8 v5, v5, 0x1

    div-int/lit8 v5, v5, 0x3

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 147
    sget v5, Lc8/NHg;->ht:I

    shl-int/lit8 v5, v5, 0x2

    div-int/lit8 v5, v5, 0x5

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_0

    .line 153
    :cond_6
    sget v5, Lc8/NHg;->wt:I

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x4

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 154
    sget v5, Lc8/NHg;->ht:I

    shl-int/lit8 v5, v5, 0x1

    div-int/lit8 v5, v5, 0x3

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_0

    .line 163
    .restart local v2    # "layoutParamsScrollView":Landroid/widget/LinearLayout$LayoutParams;
    :cond_7
    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    shl-int/lit8 v5, v5, 0x1

    div-int/lit8 v5, v5, 0x3

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto/16 :goto_1

    .line 174
    .restart local v3    # "layoutParamsTitle":Landroid/widget/LinearLayout$LayoutParams;
    :cond_8
    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    mul-int/lit8 v5, v5, 0x5

    div-int/lit8 v5, v5, 0x18

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto/16 :goto_2
.end method

.method private registBrodcaseReceiver()V
    .locals 2

    .prologue
    .line 192
    new-instance v1, Lc8/MEn;

    invoke-direct {v1, p0}, Lc8/MEn;-><init>(Lcom/youku/ui/activity/AppAggreementDialogActivity;)V

    iput-object v1, p0, Lcom/youku/ui/activity/AppAggreementDialogActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 200
    new-instance v0, Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/youku/ui/activity/AppAggreementDialogActivity;->intentActionShow:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 201
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/youku/ui/activity/AppAggreementDialogActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/youku/ui/activity/AppAggreementDialogActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 202
    return-void
.end method

.method private setChinaUnicomContent()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/youku/ui/activity/AppAggreementDialogActivity;->textTitleView:Landroid/widget/TextView;

    sget v1, Lcom/youku/phone/R$string;->china_unicom_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 105
    invoke-static {}, Lc8/Eyo;->isWoChinaUnicomService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/youku/ui/activity/AppAggreementDialogActivity;->textContentView:Landroid/widget/TextView;

    sget v1, Lcom/youku/phone/R$string;->china_unicom_content:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 110
    :goto_0
    iget-object v0, p0, Lcom/youku/ui/activity/AppAggreementDialogActivity;->textDoneView:Landroid/widget/TextView;

    sget v1, Lcom/youku/phone/R$string;->china_unicom_done_text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 111
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/youku/ui/activity/AppAggreementDialogActivity;->textContentView:Landroid/widget/TextView;

    sget v1, Lcom/youku/phone/R$string;->china_unicom_smooth_view_content:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private setCommenText()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/youku/ui/activity/AppAggreementDialogActivity;->textTitleView:Landroid/widget/TextView;

    sget v1, Lcom/youku/phone/R$string;->app_aggreement_disclaimer_text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 98
    iget-object v0, p0, Lcom/youku/ui/activity/AppAggreementDialogActivity;->textContentView:Landroid/widget/TextView;

    sget v1, Lcom/youku/phone/R$string;->app_aggreement_disclaimer_content:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 99
    iget-object v0, p0, Lcom/youku/ui/activity/AppAggreementDialogActivity;->textDoneView:Landroid/widget/TextView;

    sget v1, Lcom/youku/phone/R$string;->app_aggreement_done_text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 100
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 212
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 216
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 218
    invoke-virtual {p0}, Lcom/youku/ui/activity/AppAggreementDialogActivity;->finish()V

    .line 219
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-le v0, v2, :cond_1

    .line 53
    const v0, 0x1030132

    invoke-virtual {p0, v0}, Lcom/youku/ui/activity/AppAggreementDialogActivity;->setTheme(I)V

    .line 57
    :goto_0
    invoke-virtual {p0}, Lcom/youku/ui/activity/AppAggreementDialogActivity;->setFullscreen()V

    .line 58
    invoke-static {p0}, Lc8/Eyo;->getInstance(Landroid/content/Context;)Lc8/Eyo;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/ui/activity/AppAggreementDialogActivity;->instanceAppVersionManager:Lc8/Eyo;

    .line 59
    iget-object v0, p0, Lcom/youku/ui/activity/AppAggreementDialogActivity;->instanceAppVersionManager:Lc8/Eyo;

    invoke-virtual {v0}, Lc8/Eyo;->isShowChinaUnicomDialog()Z

    move-result v0

    iput-boolean v0, p0, Lcom/youku/ui/activity/AppAggreementDialogActivity;->isChinaUnicomState:Z

    .line 60
    sget v0, Lcom/youku/phone/R$layout;->app_agreement_popwindow:I

    invoke-virtual {p0, v0}, Lcom/youku/ui/activity/AppAggreementDialogActivity;->setContentView(I)V

    .line 61
    const-string/jumbo v2, "app_aggrement"

    invoke-static {}, Lc8/LWc;->hasGingerbread()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    :goto_1
    invoke-virtual {p0, v2, v0}, Lcom/youku/ui/activity/AppAggreementDialogActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/ui/activity/AppAggreementDialogActivity;->preferences:Landroid/content/SharedPreferences;

    .line 63
    iget-object v0, p0, Lcom/youku/ui/activity/AppAggreementDialogActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/ui/activity/AppAggreementDialogActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 64
    sget v0, Lcom/youku/phone/R$id;->app_agreement_done_textview:I

    invoke-virtual {p0, v0}, Lcom/youku/ui/activity/AppAggreementDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/ui/activity/AppAggreementDialogActivity;->textDoneView:Landroid/widget/TextView;

    .line 65
    sget v0, Lcom/youku/phone/R$id;->app_agreement_title_textview:I

    invoke-virtual {p0, v0}, Lcom/youku/ui/activity/AppAggreementDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/ui/activity/AppAggreementDialogActivity;->textTitleView:Landroid/widget/TextView;

    .line 66
    sget v0, Lcom/youku/phone/R$id;->app_agreement_content_textview:I

    invoke-virtual {p0, v0}, Lcom/youku/ui/activity/AppAggreementDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/ui/activity/AppAggreementDialogActivity;->textContentView:Landroid/widget/TextView;

    .line 67
    sget v0, Lcom/youku/phone/R$id;->app_agreement_cutting_line_view:I

    invoke-virtual {p0, v0}, Lcom/youku/ui/activity/AppAggreementDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/ui/activity/AppAggreementDialogActivity;->app_agreement_cutting_line_view:Landroid/view/View;

    .line 68
    sget v0, Lcom/youku/phone/R$id;->app_agreement_popwindow_root_layout:I

    invoke-virtual {p0, v0}, Lcom/youku/ui/activity/AppAggreementDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/youku/ui/activity/AppAggreementDialogActivity;->relativeLayout:Landroid/widget/LinearLayout;

    .line 69
    sget v0, Lcom/youku/phone/R$id;->app_agreement_done_bottom_relayout:I

    invoke-virtual {p0, v0}, Lcom/youku/ui/activity/AppAggreementDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/youku/ui/activity/AppAggreementDialogActivity;->app_agreement_done_bottom_relayout:Landroid/widget/RelativeLayout;

    .line 70
    sget v0, Lcom/youku/phone/R$id;->app_agreement_content_scrollview:I

    invoke-virtual {p0, v0}, Lcom/youku/ui/activity/AppAggreementDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/youku/ui/activity/AppAggreementDialogActivity;->app_agreement_content_scrollview:Landroid/widget/ScrollView;

    .line 71
    iget-object v0, p0, Lcom/youku/ui/activity/AppAggreementDialogActivity;->textDoneView:Landroid/widget/TextView;

    new-instance v2, Lc8/LEn;

    invoke-direct {v2, p0}, Lc8/LEn;-><init>(Lcom/youku/ui/activity/AppAggreementDialogActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-boolean v0, p0, Lcom/youku/ui/activity/AppAggreementDialogActivity;->isChinaUnicomState:Z

    if-eqz v0, :cond_3

    .line 83
    invoke-direct {p0}, Lcom/youku/ui/activity/AppAggreementDialogActivity;->setChinaUnicomContent()V

    .line 87
    :goto_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    .line 88
    invoke-virtual {p0, v1}, Lcom/youku/ui/activity/AppAggreementDialogActivity;->setFinishOnTouchOutside(Z)V

    .line 90
    :cond_0
    invoke-direct {p0}, Lcom/youku/ui/activity/AppAggreementDialogActivity;->matchDevice()V

    .line 92
    invoke-direct {p0}, Lcom/youku/ui/activity/AppAggreementDialogActivity;->registBrodcaseReceiver()V

    .line 93
    return-void

    .line 55
    :cond_1
    const v0, 0x103000b

    invoke-virtual {p0, v0}, Lcom/youku/ui/activity/AppAggreementDialogActivity;->setTheme(I)V

    goto/16 :goto_0

    :cond_2
    move v0, v1

    .line 61
    goto :goto_1

    .line 85
    :cond_3
    invoke-direct {p0}, Lcom/youku/ui/activity/AppAggreementDialogActivity;->setCommenText()V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 229
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 230
    iget-object v0, p0, Lcom/youku/ui/activity/AppAggreementDialogActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/youku/ui/activity/AppAggreementDialogActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/youku/ui/activity/AppAggreementDialogActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 233
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 223
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 224
    invoke-static {p0}, Lc8/Eyo;->getInstance(Landroid/content/Context;)Lc8/Eyo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/Eyo;->dissMissAgreementDialog(Landroid/app/Activity;)V

    .line 225
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 237
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p0, p1}, Lcom/youku/ui/activity/AppAggreementDialogActivity;->isOutOfBounds(Landroid/app/Activity;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    const/4 v0, 0x1

    .line 240
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setFullscreen()V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 205
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/youku/ui/activity/AppAggreementDialogActivity;->requestWindowFeature(I)Z

    .line 206
    invoke-virtual {p0}, Lcom/youku/ui/activity/AppAggreementDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 207
    return-void
.end method
