.class public final Lc8/Rrq;
.super Ljava/lang/Object;
.source "OperatorDistinct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Srq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Holder"
.end annotation


# static fields
.field static final INSTANCE:Lc8/Srq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Srq",
            "<**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lc8/Srq;

    invoke-static {}, Lc8/Ayq;->identity()Lc8/Inq;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/Srq;-><init>(Lc8/Inq;)V

    sput-object v0, Lc8/Rrq;->INSTANCE:Lc8/Srq;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
