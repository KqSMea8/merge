.class public interface abstract Lc8/udf;
.super Ljava/lang/Object;
.source "EventResult.java"


# static fields
.field public static final FAILURE:Lc8/udf;

.field public static final SUCCESS:Lc8/udf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lc8/sdf;

    invoke-direct {v0}, Lc8/sdf;-><init>()V

    sput-object v0, Lc8/udf;->SUCCESS:Lc8/udf;

    .line 23
    new-instance v0, Lc8/tdf;

    invoke-direct {v0}, Lc8/tdf;-><init>()V

    sput-object v0, Lc8/udf;->FAILURE:Lc8/udf;

    return-void
.end method


# virtual methods
.method public abstract getData()Landroid/os/Bundle;
.end method

.method public abstract isSuccess()Z
.end method
