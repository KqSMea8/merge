.class public Lc8/KGn;
.super Ljava/lang/Object;
.source "UpdateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/ui/activity/UpdateActivity;->showProgressDialog(Z)V
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
    .line 342
    iput-object p1, p0, Lc8/KGn;->this$0:Lcom/youku/ui/activity/UpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 345
    iget-object v0, p0, Lc8/KGn;->this$0:Lcom/youku/ui/activity/UpdateActivity;

    invoke-virtual {v0}, Lcom/youku/ui/activity/UpdateActivity;->finish()V

    .line 346
    return-void
.end method
