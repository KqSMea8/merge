.class public Lc8/Rko;
.super Lc8/Oko;
.source "SNSBindInfos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Qko;
    }
.end annotation


# static fields
.field public static final TLSITE_TAOBAO:Ljava/lang/String; = "taobao"


# instance fields
.field public mBindInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/Qko;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lc8/Oko;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/Rko;->mBindInfos:Ljava/util/ArrayList;

    .line 22
    return-void
.end method
