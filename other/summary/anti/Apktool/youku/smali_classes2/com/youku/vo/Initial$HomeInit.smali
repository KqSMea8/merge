.class public Lcom/youku/vo/Initial$HomeInit;
.super Ljava/lang/Object;
.source "Initial.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/Initial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HomeInit"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/Initial$HomeInit$SubTag;
    }
.end annotation


# static fields
.field public static final SKIN_ACTIVITY_1:I = 0x1

.field public static final SKIN_OPERATION_0:I = 0x0

.field private static final serialVersionUID:J = -0x1fba4a32d94b1e99L


# instance fields
.field public hp_bg_color:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public selected_icon:Ljava/lang/String;

.field public skin_type:I

.field public sub_tags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/Initial$HomeInit$SubTag;",
            ">;"
        }
    .end annotation
.end field

.field public tab_title_color:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public url_open_way:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 511
    return-void
.end method
