.class public Lc8/hyq;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lc8/Inq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/oyq;->scalarScheduleOn(Lc8/amq;)Lc8/Vlq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Inq",
        "<",
        "Lc8/hnq;",
        "Lc8/Pmq;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/oyq;

.field final synthetic val$els:Lc8/Ywq;


# direct methods
.method constructor <init>(Lc8/oyq;Lc8/Ywq;)V
    .locals 0

    .prologue
    .line 99
    .local p0, "this":Lc8/hyq;, "Lrx/internal/util/ScalarSynchronousObservable.1;"
    iput-object p1, p0, Lc8/hyq;->this$0:Lc8/oyq;

    iput-object p2, p0, Lc8/hyq;->val$els:Lc8/Ywq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/hnq;)Lc8/Pmq;
    .locals 1
    .param p1, "a"    # Lc8/hnq;

    .prologue
    .line 102
    .local p0, "this":Lc8/hyq;, "Lrx/internal/util/ScalarSynchronousObservable.1;"
    iget-object v0, p0, Lc8/hyq;->val$els:Lc8/Ywq;

    invoke-virtual {v0, p1}, Lc8/Ywq;->scheduleDirect(Lc8/hnq;)Lc8/Pmq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 99
    .local p0, "this":Lc8/hyq;, "Lrx/internal/util/ScalarSynchronousObservable.1;"
    check-cast p1, Lc8/hnq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/hyq;->call(Lc8/hnq;)Lc8/Pmq;

    move-result-object v0

    return-object v0
.end method
