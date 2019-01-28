.class public final Lc8/KBq;
.super Ljava/lang/Object;
.source "TestSubject.java"

# interfaces
.implements Lc8/inq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/OBq;->create(Lc8/nBq;)Lc8/OBq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/inq",
        "<",
        "Lc8/JBq",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$state:Lrx/subjects/SubjectSubscriptionManager;


# direct methods
.method constructor <init>(Lrx/subjects/SubjectSubscriptionManager;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lc8/KBq;->val$state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/JBq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/JBq",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "o":Lc8/JBq;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    iget-object v0, p0, Lc8/KBq;->val$state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v0}, Lrx/subjects/SubjectSubscriptionManager;->getLatest()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lc8/KBq;->val$state:Lrx/subjects/SubjectSubscriptionManager;

    iget-object v1, v1, Lrx/subjects/SubjectSubscriptionManager;->nl:Lc8/cpq;

    invoke-virtual {p1, v0, v1}, Lc8/JBq;->emitFirst(Ljava/lang/Object;Lc8/cpq;)V

    .line 56
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 51
    check-cast p1, Lc8/JBq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/KBq;->call(Lc8/JBq;)V

    return-void
.end method
