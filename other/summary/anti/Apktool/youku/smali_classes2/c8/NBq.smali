.class public Lc8/NBq;
.super Ljava/lang/Object;
.source "TestSubject.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/OBq;->onNext(Ljava/lang/Object;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/OBq;

.field final synthetic val$v:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lc8/OBq;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 161
    .local p0, "this":Lc8/NBq;, "Lrx/subjects/TestSubject.4;"
    iput-object p1, p0, Lc8/NBq;->this$0:Lc8/OBq;

    iput-object p2, p0, Lc8/NBq;->val$v:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 165
    .local p0, "this":Lc8/NBq;, "Lrx/subjects/TestSubject.4;"
    iget-object v0, p0, Lc8/NBq;->this$0:Lc8/OBq;

    iget-object v1, p0, Lc8/NBq;->val$v:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lc8/OBq;->internalOnNext(Ljava/lang/Object;)V

    .line 166
    return-void
.end method
