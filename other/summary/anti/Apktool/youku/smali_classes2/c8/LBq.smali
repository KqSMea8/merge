.class public Lc8/LBq;
.super Ljava/lang/Object;
.source "TestSubject.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/OBq;->onCompleted(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/OBq;


# direct methods
.method constructor <init>(Lc8/OBq;)V
    .locals 0

    .prologue
    .line 93
    .local p0, "this":Lc8/LBq;, "Lrx/subjects/TestSubject.2;"
    iput-object p1, p0, Lc8/LBq;->this$0:Lc8/OBq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .prologue
    .line 97
    .local p0, "this":Lc8/LBq;, "Lrx/subjects/TestSubject.2;"
    iget-object v0, p0, Lc8/LBq;->this$0:Lc8/OBq;

    invoke-virtual {v0}, Lc8/OBq;->internalOnCompleted()V

    .line 98
    return-void
.end method
