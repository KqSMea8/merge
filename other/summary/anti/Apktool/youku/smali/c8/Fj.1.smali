.class public Lc8/Fj;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Jj;->search(Ljava/lang/String;Landroid/os/Bundle;Lc8/Nj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Jj;

.field final synthetic val$callback:Lc8/Nj;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/Jj;Lc8/Nj;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Jj;

    .prologue
    .line 1149
    iput-object p1, p0, Lc8/Fj;->this$0:Lc8/Jj;

    iput-object p2, p0, Lc8/Fj;->val$callback:Lc8/Nj;

    iput-object p3, p0, Lc8/Fj;->val$query:Ljava/lang/String;

    iput-object p4, p0, Lc8/Fj;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1152
    iget-object v0, p0, Lc8/Fj;->val$callback:Lc8/Nj;

    iget-object v1, p0, Lc8/Fj;->val$query:Ljava/lang/String;

    iget-object v2, p0, Lc8/Fj;->val$extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lc8/Nj;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1153
    return-void
.end method
