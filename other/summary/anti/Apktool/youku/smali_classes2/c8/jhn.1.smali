.class public Lc8/jhn;
.super Ljava/lang/Object;
.source "LoginManagerImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/mhn;->launchLogoutDialog(Landroid/app/Activity;Lc8/ehn;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/mhn;

.field final synthetic val$c:Lc8/ehn;

.field final synthetic val$d:Lc8/Cbp;


# direct methods
.method constructor <init>(Lc8/mhn;Lc8/Cbp;Lc8/ehn;)V
    .locals 0
    .param p1, "this$0"    # Lc8/mhn;

    .prologue
    .line 110
    iput-object p1, p0, Lc8/jhn;->this$0:Lc8/mhn;

    iput-object p2, p0, Lc8/jhn;->val$d:Lc8/Cbp;

    iput-object p3, p0, Lc8/jhn;->val$c:Lc8/ehn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 114
    iget-object v0, p0, Lc8/jhn;->val$d:Lc8/Cbp;

    invoke-virtual {v0}, Lc8/Cbp;->dismiss()V

    .line 115
    iget-object v0, p0, Lc8/jhn;->val$c:Lc8/ehn;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lc8/ehn;->onFailed(Lc8/ghn;)V

    .line 116
    return-void
.end method
