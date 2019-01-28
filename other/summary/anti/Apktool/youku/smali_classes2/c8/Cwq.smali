.class public final Lc8/Cwq;
.super Ljava/lang/Object;
.source "SingleOperatorOnErrorResumeNext.java"

# interfaces
.implements Lc8/Inq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Ewq;->withOther(Lc8/Mmq;Lc8/Mmq;)Lc8/Ewq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Inq",
        "<",
        "Ljava/lang/Throwable;",
        "Lc8/Mmq",
        "<+TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$resumeSingleInCaseOfError:Lc8/Mmq;


# direct methods
.method constructor <init>(Lc8/Mmq;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lc8/Cwq;->val$resumeSingleInCaseOfError:Lc8/Mmq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Throwable;)Lc8/Mmq;
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lc8/Mmq",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lc8/Cwq;->val$resumeSingleInCaseOfError:Lc8/Mmq;

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 50
    check-cast p1, Ljava/lang/Throwable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Cwq;->call(Ljava/lang/Throwable;)Lc8/Mmq;

    move-result-object v0

    return-object v0
.end method
