.class public final Lc8/Orq;
.super Ljava/lang/Object;
.source "OperatorDematerialize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Prq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Holder"
.end annotation


# static fields
.field static final INSTANCE:Lc8/Prq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Prq",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lc8/Prq;

    invoke-direct {v0}, Lc8/Prq;-><init>()V

    sput-object v0, Lc8/Orq;->INSTANCE:Lc8/Prq;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
