.class public Lc8/JYm;
.super Ljava/lang/Object;
.source "PoplayerActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/poplayer/ui/activity/PoplayerActivity;->initHost()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/poplayer/ui/activity/PoplayerActivity;

.field final synthetic val$dailyBut:Landroid/widget/RadioButton;

.field final synthetic val$onLineBut:Landroid/widget/RadioButton;

.field final synthetic val$prepareBut:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Lcom/youku/poplayer/ui/activity/PoplayerActivity;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/poplayer/ui/activity/PoplayerActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 63
    iput-object p1, p0, Lc8/JYm;->this$0:Lcom/youku/poplayer/ui/activity/PoplayerActivity;

    iput-object p2, p0, Lc8/JYm;->val$onLineBut:Landroid/widget/RadioButton;

    iput-object p3, p0, Lc8/JYm;->val$prepareBut:Landroid/widget/RadioButton;

    iput-object p4, p0, Lc8/JYm;->val$dailyBut:Landroid/widget/RadioButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 5
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, "checkBut":Landroid/widget/RadioButton;
    sget v1, Lcom/youku/phone/R$id;->onLine:I

    if-ne v1, p2, :cond_2

    .line 68
    sput v4, Lc8/PYm;->URL_TYPE:I

    .line 69
    iget-object v1, p0, Lc8/JYm;->val$onLineBut:Landroid/widget/RadioButton;

    iget-object v2, p0, Lc8/JYm;->val$onLineBut:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v1, p0, Lc8/JYm;->val$prepareBut:Landroid/widget/RadioButton;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v1, p0, Lc8/JYm;->val$dailyBut:Landroid/widget/RadioButton;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lc8/JYm;->val$onLineBut:Landroid/widget/RadioButton;

    .line 86
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 87
    sget-object v1, Lc8/PYm;->URL_TYPE_KET:Ljava/lang/String;

    sget v2, Lc8/PYm;->URL_TYPE:I

    invoke-static {v1, v2}, Lc8/Iin;->savePreference(Ljava/lang/String;I)V

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".change.success"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    iget-object v1, p0, Lc8/JYm;->this$0:Lcom/youku/poplayer/ui/activity/PoplayerActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".change.success"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 90
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 92
    :cond_1
    return-void

    .line 73
    :cond_2
    sget v1, Lcom/youku/phone/R$id;->prepare:I

    if-ne v1, p2, :cond_3

    .line 74
    const/4 v1, 0x1

    sput v1, Lc8/PYm;->URL_TYPE:I

    .line 75
    iget-object v1, p0, Lc8/JYm;->val$onLineBut:Landroid/widget/RadioButton;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v1, p0, Lc8/JYm;->val$prepareBut:Landroid/widget/RadioButton;

    iget-object v2, p0, Lc8/JYm;->val$prepareBut:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v1, p0, Lc8/JYm;->val$dailyBut:Landroid/widget/RadioButton;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lc8/JYm;->val$prepareBut:Landroid/widget/RadioButton;

    goto :goto_0

    .line 79
    :cond_3
    sget v1, Lcom/youku/phone/R$id;->daily:I

    if-ne v1, p2, :cond_0

    .line 80
    const/4 v1, 0x2

    sput v1, Lc8/PYm;->URL_TYPE:I

    .line 81
    iget-object v1, p0, Lc8/JYm;->val$onLineBut:Landroid/widget/RadioButton;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v1, p0, Lc8/JYm;->val$prepareBut:Landroid/widget/RadioButton;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v1, p0, Lc8/JYm;->val$dailyBut:Landroid/widget/RadioButton;

    iget-object v2, p0, Lc8/JYm;->val$dailyBut:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lc8/JYm;->val$dailyBut:Landroid/widget/RadioButton;

    goto/16 :goto_0
.end method
