.class public final Lc8/ssq;
.super Ljava/lang/Object;
.source "OperatorIgnoreElements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/tsq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Holder"
.end annotation


# static fields
.field static final INSTANCE:Lc8/tsq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/tsq",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lc8/tsq;

    invoke-direct {v0}, Lc8/tsq;-><init>()V

    sput-object v0, Lc8/ssq;->INSTANCE:Lc8/tsq;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
