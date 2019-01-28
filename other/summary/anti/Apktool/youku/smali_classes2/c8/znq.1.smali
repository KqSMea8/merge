.class public final Lc8/znq;
.super Ljava/lang/Object;
.source "Actions.java"

# interfaces
.implements Lc8/Lnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Gnq;->toFunc(Lc8/lnq;Ljava/lang/Object;)Lc8/Lnq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Lnq",
        "<TT1;TT2;TT3;TT4;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$action:Lc8/lnq;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lc8/lnq;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lc8/znq;->val$action:Lc8/lnq;

    iput-object p2, p0, Lc8/znq;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;TT2;TT3;TT4;)TR;"
        }
    .end annotation

    .prologue
    .line 379
    .local p1, "t1":Ljava/lang/Object;, "TT1;"
    .local p2, "t2":Ljava/lang/Object;, "TT2;"
    .local p3, "t3":Ljava/lang/Object;, "TT3;"
    .local p4, "t4":Ljava/lang/Object;, "TT4;"
    iget-object v0, p0, Lc8/znq;->val$action:Lc8/lnq;

    invoke-interface {v0, p1, p2, p3, p4}, Lc8/lnq;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 380
    iget-object v0, p0, Lc8/znq;->val$result:Ljava/lang/Object;

    return-object v0
.end method
