.class public Lc8/ylq;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lc8/Hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Plq;->toSingleDefault(Ljava/lang/Object;)Lc8/Mmq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Hnq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Plq;

.field final synthetic val$completionValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lc8/Plq;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2308
    iput-object p1, p0, Lc8/ylq;->this$0:Lc8/Plq;

    iput-object p2, p0, Lc8/ylq;->val$completionValue:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 2311
    iget-object v0, p0, Lc8/ylq;->val$completionValue:Ljava/lang/Object;

    return-object v0
.end method
