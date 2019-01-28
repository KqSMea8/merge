.class public Lc8/HBq;
.super Ljava/lang/Object;
.source "SubjectSubscriptionManager.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/subjects/SubjectSubscriptionManager;->addUnsubscriber(Lc8/Omq;Lc8/JBq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/subjects/SubjectSubscriptionManager;

.field final synthetic val$bo:Lc8/JBq;


# direct methods
.method public constructor <init>(Lrx/subjects/SubjectSubscriptionManager;Lc8/JBq;)V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lc8/HBq;, "Lrx/subjects/SubjectSubscriptionManager.1;"
    iput-object p1, p0, Lc8/HBq;->this$0:Lrx/subjects/SubjectSubscriptionManager;

    iput-object p2, p0, Lc8/HBq;->val$bo:Lc8/JBq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 72
    .local p0, "this":Lc8/HBq;, "Lrx/subjects/SubjectSubscriptionManager.1;"
    iget-object v0, p0, Lc8/HBq;->this$0:Lrx/subjects/SubjectSubscriptionManager;

    iget-object v1, p0, Lc8/HBq;->val$bo:Lc8/JBq;

    invoke-virtual {v0, v1}, Lrx/subjects/SubjectSubscriptionManager;->remove(Lc8/JBq;)V

    .line 73
    return-void
.end method
