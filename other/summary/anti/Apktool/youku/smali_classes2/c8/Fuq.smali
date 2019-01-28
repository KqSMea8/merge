.class public Lc8/Fuq;
.super Ljava/lang/Object;
.source "OperatorTakeLast.java"

# interfaces
.implements Lc8/Xlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Huq;->call(Lc8/Omq;)Lc8/Omq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Huq;

.field final synthetic val$parent:Lc8/Guq;


# direct methods
.method constructor <init>(Lc8/Huq;Lc8/Guq;)V
    .locals 0

    .prologue
    .line 48
    .local p0, "this":Lc8/Fuq;, "Lrx/internal/operators/OperatorTakeLast.1;"
    iput-object p1, p0, Lc8/Fuq;->this$0:Lc8/Huq;

    iput-object p2, p0, Lc8/Fuq;->val$parent:Lc8/Guq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 51
    .local p0, "this":Lc8/Fuq;, "Lrx/internal/operators/OperatorTakeLast.1;"
    iget-object v0, p0, Lc8/Fuq;->val$parent:Lc8/Guq;

    invoke-virtual {v0, p1, p2}, Lc8/Guq;->requestMore(J)V

    .line 52
    return-void
.end method
