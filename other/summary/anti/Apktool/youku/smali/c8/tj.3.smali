.class public Lc8/tj;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/yj;->getItem(Ljava/lang/String;Lc8/qj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/yj;

.field final synthetic val$cb:Lc8/qj;

.field final synthetic val$mediaId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/yj;Lc8/qj;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/yj;

    .prologue
    .line 1602
    iput-object p1, p0, Lc8/tj;->this$0:Lc8/yj;

    iput-object p2, p0, Lc8/tj;->val$cb:Lc8/qj;

    iput-object p3, p0, Lc8/tj;->val$mediaId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1606
    iget-object v0, p0, Lc8/tj;->val$cb:Lc8/qj;

    iget-object v1, p0, Lc8/tj;->val$mediaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc8/qj;->onError(Ljava/lang/String;)V

    .line 1607
    return-void
.end method
