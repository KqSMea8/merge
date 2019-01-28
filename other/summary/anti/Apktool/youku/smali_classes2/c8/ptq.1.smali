.class public Lc8/ptq;
.super Ljava/lang/Object;
.source "OperatorReplay.java"

# interfaces
.implements Lc8/inq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/qtq;->call(Lc8/Omq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/inq",
        "<",
        "Lc8/Pmq;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/qtq;

.field final synthetic val$child:Lc8/Omq;


# direct methods
.method constructor <init>(Lc8/qtq;Lc8/Omq;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lc8/ptq;->this$0:Lc8/qtq;

    iput-object p2, p0, Lc8/ptq;->val$child:Lc8/Omq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/Pmq;)V
    .locals 1
    .param p1, "t"    # Lc8/Pmq;

    .prologue
    .line 79
    iget-object v0, p0, Lc8/ptq;->val$child:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 80
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 76
    check-cast p1, Lc8/Pmq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/ptq;->call(Lc8/Pmq;)V

    return-void
.end method
