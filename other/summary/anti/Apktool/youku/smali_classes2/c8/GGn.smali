.class public Lc8/GGn;
.super Ljava/lang/Object;
.source "UpdateActivity.java"

# interfaces
.implements Lc8/Bbp;


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
    .line 246
    iput-object p1, p0, Lc8/GGn;->this$0:Lcom/youku/ui/activity/UpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPress()V
    .locals 1

    .prologue
    .line 249
    sget v0, Lcom/youku/phone/R$string;->update_force_type_back_press_tips:I

    invoke-static {v0}, Lc8/bzo;->showTips(I)V

    .line 250
    return-void
.end method
