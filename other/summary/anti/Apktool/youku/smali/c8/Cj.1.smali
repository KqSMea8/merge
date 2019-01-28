.class public Lc8/Cj;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Jj;->getItem(Ljava/lang/String;Lc8/qj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Jj;

.field final synthetic val$cb:Lc8/qj;

.field final synthetic val$mediaId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/Jj;Lc8/qj;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Jj;

    .prologue
    .line 1108
    iput-object p1, p0, Lc8/Cj;->this$0:Lc8/Jj;

    iput-object p2, p0, Lc8/Cj;->val$cb:Lc8/qj;

    iput-object p3, p0, Lc8/Cj;->val$mediaId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1111
    iget-object v0, p0, Lc8/Cj;->val$cb:Lc8/qj;

    iget-object v1, p0, Lc8/Cj;->val$mediaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc8/qj;->onError(Ljava/lang/String;)V

    .line 1112
    return-void
.end method
