.class public Lc8/MBq;
.super Ljava/lang/Object;
.source "TestSubject.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/OBq;->onError(Ljava/lang/Throwable;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/OBq;

.field final synthetic val$e:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lc8/OBq;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 128
    .local p0, "this":Lc8/MBq;, "Lrx/subjects/TestSubject.3;"
    iput-object p1, p0, Lc8/MBq;->this$0:Lc8/OBq;

    iput-object p2, p0, Lc8/MBq;->val$e:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 132
    .local p0, "this":Lc8/MBq;, "Lrx/subjects/TestSubject.3;"
    iget-object v0, p0, Lc8/MBq;->this$0:Lc8/OBq;

    iget-object v1, p0, Lc8/MBq;->val$e:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lc8/OBq;->internalOnError(Ljava/lang/Throwable;)V

    .line 133
    return-void
.end method
