.class public Lc8/Epq;
.super Ljava/lang/Object;
.source "OnSubscribeFlattenIterable.java"

# interfaces
.implements Lc8/Xlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Hpq;->call(Lc8/Omq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Hpq;

.field final synthetic val$parent:Lc8/Fpq;


# direct methods
.method constructor <init>(Lc8/Hpq;Lc8/Fpq;)V
    .locals 0

    .prologue
    .line 59
    .local p0, "this":Lc8/Epq;, "Lrx/internal/operators/OnSubscribeFlattenIterable.1;"
    iput-object p1, p0, Lc8/Epq;->this$0:Lc8/Hpq;

    iput-object p2, p0, Lc8/Epq;->val$parent:Lc8/Fpq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 62
    .local p0, "this":Lc8/Epq;, "Lrx/internal/operators/OnSubscribeFlattenIterable.1;"
    iget-object v0, p0, Lc8/Epq;->val$parent:Lc8/Fpq;

    invoke-virtual {v0, p1, p2}, Lc8/Fpq;->requestMore(J)V

    .line 63
    return-void
.end method
