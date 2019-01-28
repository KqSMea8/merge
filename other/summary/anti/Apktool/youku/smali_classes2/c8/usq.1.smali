.class public Lc8/usq;
.super Ljava/lang/Object;
.source "OperatorMapNotification.java"

# interfaces
.implements Lc8/Xlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/wsq;->call(Lc8/Omq;)Lc8/Omq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/wsq;

.field final synthetic val$parent:Lc8/vsq;


# direct methods
.method constructor <init>(Lc8/wsq;Lc8/vsq;)V
    .locals 0

    .prologue
    .line 49
    .local p0, "this":Lc8/usq;, "Lrx/internal/operators/OperatorMapNotification.1;"
    iput-object p1, p0, Lc8/usq;->this$0:Lc8/wsq;

    iput-object p2, p0, Lc8/usq;->val$parent:Lc8/vsq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 52
    .local p0, "this":Lc8/usq;, "Lrx/internal/operators/OperatorMapNotification.1;"
    iget-object v0, p0, Lc8/usq;->val$parent:Lc8/vsq;

    invoke-virtual {v0, p1, p2}, Lc8/vsq;->requestInner(J)V

    .line 53
    return-void
.end method
