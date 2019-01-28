.class public Lc8/LEn;
.super Ljava/lang/Object;
.source "AppAggreementDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/ui/activity/AppAggreementDialogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/ui/activity/AppAggreementDialogActivity;


# direct methods
.method public constructor <init>(Lcom/youku/ui/activity/AppAggreementDialogActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/ui/activity/AppAggreementDialogActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 71
    iput-object p1, p0, Lc8/LEn;->this$0:Lcom/youku/ui/activity/AppAggreementDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 75
    iget-object v0, p0, Lc8/LEn;->this$0:Lcom/youku/ui/activity/AppAggreementDialogActivity;

    invoke-static {v0}, Lcom/youku/ui/activity/AppAggreementDialogActivity;->access$000(Lcom/youku/ui/activity/AppAggreementDialogActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lc8/LEn;->this$0:Lcom/youku/ui/activity/AppAggreementDialogActivity;

    invoke-static {v0}, Lcom/youku/ui/activity/AppAggreementDialogActivity;->access$100(Lcom/youku/ui/activity/AppAggreementDialogActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "isShowChinaUnicomDialog"

    const/16 v2, 0xc

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 77
    iget-object v0, p0, Lc8/LEn;->this$0:Lcom/youku/ui/activity/AppAggreementDialogActivity;

    invoke-static {v0}, Lcom/youku/ui/activity/AppAggreementDialogActivity;->access$100(Lcom/youku/ui/activity/AppAggreementDialogActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 79
    :cond_0
    iget-object v0, p0, Lc8/LEn;->this$0:Lcom/youku/ui/activity/AppAggreementDialogActivity;

    invoke-virtual {v0}, Lcom/youku/ui/activity/AppAggreementDialogActivity;->finish()V

    .line 80
    return-void
.end method
