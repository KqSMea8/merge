.class public Lc8/FGn;
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
    .line 236
    iput-object p1, p0, Lc8/FGn;->this$0:Lcom/youku/ui/activity/UpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 239
    iget-object v0, p0, Lc8/FGn;->this$0:Lcom/youku/ui/activity/UpdateActivity;

    invoke-static {v0}, Lcom/youku/ui/activity/UpdateActivity;->access$000(Lcom/youku/ui/activity/UpdateActivity;)Lc8/Cbp;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Cbp;->dismiss()V

    .line 240
    iget-object v0, p0, Lc8/FGn;->this$0:Lcom/youku/ui/activity/UpdateActivity;

    invoke-static {v0}, Lcom/youku/ui/activity/UpdateActivity;->access$500(Lcom/youku/ui/activity/UpdateActivity;)V

    .line 241
    iget-object v0, p0, Lc8/FGn;->this$0:Lcom/youku/ui/activity/UpdateActivity;

    invoke-static {v0}, Lcom/youku/ui/activity/UpdateActivity;->access$300(Lcom/youku/ui/activity/UpdateActivity;)V

    .line 242
    invoke-static {}, Lcom/youku/ui/activity/UpdateActivity;->access$400()Ljava/lang/String;

    .line 243
    return-void
.end method
