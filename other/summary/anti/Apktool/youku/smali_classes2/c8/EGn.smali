.class public Lc8/EGn;
.super Ljava/lang/Object;
.source "UpdateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/ui/activity/UpdateActivity;->showNoticeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/ui/activity/UpdateActivity;


# direct methods
.method public constructor <init>(Lcom/youku/ui/activity/UpdateActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/ui/activity/UpdateActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 206
    iput-object p1, p0, Lc8/EGn;->this$0:Lcom/youku/ui/activity/UpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 209
    iget-object v0, p0, Lc8/EGn;->this$0:Lcom/youku/ui/activity/UpdateActivity;

    invoke-static {v0}, Lcom/youku/ui/activity/UpdateActivity;->access$000(Lcom/youku/ui/activity/UpdateActivity;)Lc8/Cbp;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Cbp;->dismiss()V

    .line 210
    iget-object v0, p0, Lc8/EGn;->this$0:Lcom/youku/ui/activity/UpdateActivity;

    invoke-static {v0}, Lcom/youku/ui/activity/UpdateActivity;->access$100(Lcom/youku/ui/activity/UpdateActivity;)Lcom/youku/ui/activity/UpdateActivity$UpdateType;

    move-result-object v0

    sget-object v1, Lcom/youku/ui/activity/UpdateActivity$UpdateType;->check:Lcom/youku/ui/activity/UpdateActivity$UpdateType;

    if-ne v0, v1, :cond_0

    .line 211
    iget-object v0, p0, Lc8/EGn;->this$0:Lcom/youku/ui/activity/UpdateActivity;

    invoke-static {v0, v2}, Lcom/youku/ui/activity/UpdateActivity;->access$200(Lcom/youku/ui/activity/UpdateActivity;Z)V

    .line 212
    const-string/jumbo v0, "step"

    invoke-static {v0, v3}, Lc8/Din;->updateEventSend(Ljava/lang/String;I)V

    .line 213
    const-string/jumbo v0, "page_upgrade"

    const-string/jumbo v1, "optional"

    const-string/jumbo v2, "a2h0f.9048786.optional.upgrade"

    invoke-static {v0, v1, v2}, Lc8/Din;->trackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :goto_0
    invoke-static {}, Lcom/youku/ui/activity/UpdateActivity;->access$400()Ljava/lang/String;

    .line 232
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lc8/EGn;->this$0:Lcom/youku/ui/activity/UpdateActivity;

    invoke-static {v0}, Lcom/youku/ui/activity/UpdateActivity;->access$100(Lcom/youku/ui/activity/UpdateActivity;)Lcom/youku/ui/activity/UpdateActivity$UpdateType;

    move-result-object v0

    sget-object v1, Lcom/youku/ui/activity/UpdateActivity$UpdateType;->force:Lcom/youku/ui/activity/UpdateActivity$UpdateType;

    if-ne v0, v1, :cond_1

    .line 215
    iget-object v0, p0, Lc8/EGn;->this$0:Lcom/youku/ui/activity/UpdateActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/ui/activity/UpdateActivity;->access$200(Lcom/youku/ui/activity/UpdateActivity;Z)V

    .line 216
    const-string/jumbo v0, "step"

    invoke-static {v0, v2}, Lc8/Din;->updateEventSend(Ljava/lang/String;I)V

    .line 217
    const-string/jumbo v0, "page_upgrade"

    const-string/jumbo v1, "mandatory"

    const-string/jumbo v2, "a2h0f.9048786.mandatory.upgrade"

    invoke-static {v0, v1, v2}, Lc8/Din;->trackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :cond_1
    invoke-static {}, Lc8/bzo;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 219
    invoke-static {}, Lc8/Uyo;->hasSDCard()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 220
    iget-object v0, p0, Lc8/EGn;->this$0:Lcom/youku/ui/activity/UpdateActivity;

    invoke-static {v0, v2}, Lcom/youku/ui/activity/UpdateActivity;->access$200(Lcom/youku/ui/activity/UpdateActivity;Z)V

    .line 221
    const-string/jumbo v0, "step"

    invoke-static {v0, v3}, Lc8/Din;->updateEventSend(Ljava/lang/String;I)V

    .line 222
    const-string/jumbo v0, "page_upgrade"

    const-string/jumbo v1, "optional"

    const-string/jumbo v2, "a2h0f.9048786.optional.upgrade"

    invoke-static {v0, v1, v2}, Lc8/Din;->trackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 224
    :cond_2
    sget v0, Lcom/youku/phone/R$string;->init_none_sdcard:I

    invoke-static {v0}, Lc8/bzo;->showTips(I)V

    .line 225
    iget-object v0, p0, Lc8/EGn;->this$0:Lcom/youku/ui/activity/UpdateActivity;

    invoke-static {v0}, Lcom/youku/ui/activity/UpdateActivity;->access$300(Lcom/youku/ui/activity/UpdateActivity;)V

    goto :goto_0

    .line 228
    :cond_3
    sget v0, Lcom/youku/phone/R$string;->tips_no_network:I

    invoke-static {v0}, Lc8/bzo;->showTips(I)V

    .line 229
    iget-object v0, p0, Lc8/EGn;->this$0:Lcom/youku/ui/activity/UpdateActivity;

    invoke-static {v0}, Lcom/youku/ui/activity/UpdateActivity;->access$300(Lcom/youku/ui/activity/UpdateActivity;)V

    goto :goto_0
.end method
