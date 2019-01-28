.class public Lcom/youku/android/ykgodviewtracker/constants/ConfigDTO;
.super Ljava/lang/Object;
.source "ConfigDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public utFilterKeyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/android/ykgodviewtracker/constants/ConfigDTO;->utFilterKeyList:Ljava/util/List;

    return-void
.end method
