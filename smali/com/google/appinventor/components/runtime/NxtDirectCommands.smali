.class public Lcom/google/appinventor/components/runtime/NxtDirectCommands;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;
.source "NxtDirectCommands.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a low-level interface to a LEGO MINDSTORMS NXT robot, with functions to send NXT Direct Commands."
    iconName = "images/legoMindstormsNxt.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .parameter "container"

    .prologue
    .line 48
    const-string v0, "NxtDirectCommands"

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method private closeHandle(Ljava/lang/String;I)V
    .locals 4
    .parameter "functionName"
    .parameter "handle"

    .prologue
    const/4 v3, 0x1

    .line 689
    const/4 v2, 0x3

    new-array v0, v2, [B

    .line 690
    .local v0, command:[B
    const/4 v2, 0x0

    aput-byte v3, v0, v2

    .line 691
    const/16 v2, -0x7c

    aput-byte v2, v0, v3

    .line 692
    const/4 v2, 0x2

    invoke-virtual {p0, p2, v0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 693
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 694
    .local v1, returnPackage:[B
    aget-byte v2, v0, v3

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    .line 695
    return-void
.end method

.method private getOutputState(Ljava/lang/String;I)[B
    .locals 5
    .parameter "functionName"
    .parameter "port"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 215
    const/4 v2, 0x3

    new-array v0, v2, [B

    .line 216
    .local v0, command:[B
    aput-byte v3, v0, v3

    .line 217
    const/4 v2, 0x6

    aput-byte v2, v0, v4

    .line 218
    const/4 v2, 0x2

    invoke-virtual {p0, p2, v0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 219
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 220
    .local v1, returnPackage:[B
    aget-byte v2, v0, v4

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 221
    array-length v2, v1

    const/16 v3, 0x19

    if-ne v2, v3, :cond_0

    move-object v2, v1

    .line 228
    :goto_0
    return-object v2

    .line 224
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": unexpected return package length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (expected 25)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private openWrite(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Integer;
    .locals 5
    .parameter "functionName"
    .parameter "fileName"
    .parameter "fileSize"

    .prologue
    const/4 v4, 0x1

    .line 642
    const/16 v2, 0x1a

    new-array v0, v2, [B

    .line 643
    .local v0, command:[B
    const/4 v2, 0x0

    aput-byte v4, v0, v2

    .line 644
    const/16 v2, -0x7f

    aput-byte v2, v0, v4

    .line 645
    const/4 v2, 0x2

    const/16 v3, 0x13

    invoke-virtual {p0, p2, v0, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 646
    const/16 v2, 0x16

    invoke-virtual {p0, p3, p4, v0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyULONGValueToBytes(J[BI)V

    .line 647
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 648
    .local v1, returnPackage:[B
    aget-byte v2, v0, v4

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 649
    array-length v2, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 650
    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 656
    :goto_0
    return-object v2

    .line 652
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": unexpected return package length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (expected 4)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private openWriteLinear(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Integer;
    .locals 5
    .parameter "functionName"
    .parameter "fileName"
    .parameter "fileSize"

    .prologue
    const/4 v4, 0x1

    .line 774
    const/16 v2, 0x1a

    new-array v0, v2, [B

    .line 775
    .local v0, command:[B
    const/4 v2, 0x0

    aput-byte v4, v0, v2

    .line 776
    const/16 v2, -0x77

    aput-byte v2, v0, v4

    .line 777
    const/4 v2, 0x2

    const/16 v3, 0x13

    invoke-virtual {p0, p2, v0, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 778
    const/16 v2, 0x16

    invoke-virtual {p0, p3, p4, v0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyULONGValueToBytes(J[BI)V

    .line 779
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 780
    .local v1, returnPackage:[B
    aget-byte v2, v0, v4

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 781
    array-length v2, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 782
    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 788
    :goto_0
    return-object v2

    .line 784
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": unexpected return package length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (expected 4)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private writeChunk(Ljava/lang/String;I[BI)I
    .locals 7
    .parameter "functionName"
    .parameter "handle"
    .parameter "buffer"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 661
    const/16 v3, 0x20

    if-le p4, v3, :cond_0

    .line 662
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "length must be <= 32"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 665
    :cond_0
    add-int/lit8 v3, p4, 0x3

    new-array v0, v3, [B

    .line 666
    .local v0, command:[B
    aput-byte v4, v0, v6

    .line 667
    const/16 v3, -0x7d

    aput-byte v3, v0, v4

    .line 668
    const/4 v3, 0x2

    invoke-virtual {p0, p2, v0, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 669
    const/4 v3, 0x3

    invoke-static {p3, v6, v0, v3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 670
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 671
    .local v1, returnPackage:[B
    aget-byte v3, v0, v4

    invoke-virtual {p0, p1, v1, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 672
    array-length v3, v1

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    .line 673
    const/4 v3, 0x4

    invoke-virtual {p0, v1, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUWORDValueFromBytes([BI)I

    move-result v2

    .line 674
    .local v2, writtenLength:I
    if-eq v2, p4, :cond_1

    .line 675
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": only "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes were written "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unable to write file on robot"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    move v3, v2

    .line 685
    .end local v2           #writtenLength:I
    :goto_0
    return v3

    .line 681
    :cond_2
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": unexpected return package length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (expected 6)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v3, v6

    .line 685
    goto :goto_0
.end method


# virtual methods
.method public DeleteFile(Ljava/lang/String;)V
    .locals 7
    .parameter "fileName"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Delete a file on the robot."
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 699
    const-string v1, "DeleteFile"

    .line 700
    .local v1, functionName:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 715
    :goto_0
    return-void

    .line 703
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 704
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0x196

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v1, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 709
    :cond_1
    const/16 v3, 0x16

    new-array v0, v3, [B

    .line 710
    .local v0, command:[B
    aput-byte v5, v0, v6

    .line 711
    const/16 v3, -0x7b

    aput-byte v3, v0, v5

    .line 712
    const/4 v3, 0x2

    const/16 v4, 0x13

    invoke-virtual {p0, p1, v0, v3, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 713
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v2

    .line 714
    .local v2, returnPackage:[B
    aget-byte v3, v0, v5

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    goto :goto_0
.end method

.method public DownloadFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 22
    .parameter "source"
    .parameter "destination"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Download a file to the robot."
    .end annotation

    .prologue
    .line 588
    const-string v10, "DownloadFile"

    .line 589
    .local v10, functionName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 639
    :goto_0
    return-void

    .line 592
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_1

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v17, v0

    const/16 v18, 0x19e

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v10

    move/from16 v3, v18

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 597
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_2

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v17, v0

    const/16 v18, 0x19f

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v10

    move/from16 v3, v18

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 604
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->copyMediaToTempFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 606
    .local v15, tempFile:Ljava/io/File;
    :try_start_1
    new-instance v12, Ljava/io/BufferedInputStream;

    new-instance v17, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    move-object v1, v15

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v18, 0x400

    move-object v0, v12

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 608
    .local v12, in:Ljava/io/InputStream;
    :try_start_2
    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 609
    .local v8, fileSize:J
    const-string v17, ".rxe"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_3

    const-string v17, ".ric"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    :cond_3
    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, p2

    move-wide v3, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->openWriteLinear(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Integer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v17

    move-object/from16 v11, v17

    .line 612
    .local v11, handle:Ljava/lang/Integer;
    :goto_1
    if-nez v11, :cond_5

    .line 629
    :try_start_3
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 632
    :try_start_4
    invoke-virtual {v15}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 634
    .end local v8           #fileSize:J
    .end local v11           #handle:Ljava/lang/Integer;
    .end local v12           #in:Ljava/io/InputStream;
    .end local v15           #tempFile:Ljava/io/File;
    :catch_0
    move-exception v17

    move-object/from16 v7, v17

    .line 635
    .local v7, e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v17, v0

    const/16 v18, 0x1a0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v10

    move/from16 v3, v18

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 609
    .end local v7           #e:Ljava/io/IOException;
    .restart local v8       #fileSize:J
    .restart local v12       #in:Ljava/io/InputStream;
    .restart local v15       #tempFile:Ljava/io/File;
    :cond_4
    :try_start_5
    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, p2

    move-wide v3, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->openWrite(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Integer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v17

    move-object/from16 v11, v17

    goto :goto_1

    .line 617
    .restart local v11       #handle:Ljava/lang/Integer;
    :cond_5
    const/16 v17, 0x20

    :try_start_6
    move/from16 v0, v17

    new-array v0, v0, [B

    move-object v5, v0

    .line 618
    .local v5, buffer:[B
    const-wide/16 v13, 0x0

    .line 619
    .local v13, sentLength:J
    :goto_2
    cmp-long v17, v13, v8

    if-gez v17, :cond_6

    .line 620
    const-wide/16 v17, 0x20

    sub-long v19, v8, v13

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move v6, v0

    .line 621
    .local v6, chunkLength:I
    const/16 v17, 0x0

    move-object v0, v12

    move-object v1, v5

    move/from16 v2, v17

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    .line 622
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v2, v17

    move-object v3, v5

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->writeChunk(Ljava/lang/String;I[BI)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v16

    .line 623
    .local v16, writtenLength:I
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v17, v0

    add-long v13, v13, v17

    .line 624
    goto :goto_2

    .line 626
    .end local v6           #chunkLength:I
    .end local v16           #writtenLength:I
    :cond_6
    :try_start_7
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->closeHandle(Ljava/lang/String;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 629
    :try_start_8
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 632
    :try_start_9
    invoke-virtual {v15}, Ljava/io/File;->delete()Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0

    .line 626
    .end local v5           #buffer:[B
    .end local v13           #sentLength:J
    :catchall_0
    move-exception v17

    :try_start_a
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->closeHandle(Ljava/lang/String;I)V

    throw v17
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 629
    .end local v8           #fileSize:J
    .end local v11           #handle:Ljava/lang/Integer;
    :catchall_1
    move-exception v17

    :try_start_b
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    throw v17
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 632
    .end local v12           #in:Ljava/io/InputStream;
    :catchall_2
    move-exception v17

    :try_start_c
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    throw v17
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
.end method

.method public GetBatteryLevel()I
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the battery level for the robot. Returns the voltage in millivolts."
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 352
    const-string v1, "GetBatteryLevel"

    .line 353
    .local v1, functionName:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v6

    .line 369
    :goto_0
    return v3

    .line 357
    :cond_0
    const/4 v3, 0x2

    new-array v0, v3, [B

    .line 358
    .local v0, command:[B
    aput-byte v6, v0, v6

    .line 359
    const/16 v3, 0xb

    aput-byte v3, v0, v4

    .line 360
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v2

    .line 361
    .local v2, returnPackage:[B
    aget-byte v3, v0, v4

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 362
    array-length v3, v2

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 363
    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUWORDValueFromBytes([BI)I

    move-result v3

    goto :goto_0

    .line 365
    :cond_1
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GetBatteryLevel: unexpected return package length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (expected 5)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v3, v6

    .line 369
    goto :goto_0
.end method

.method public GetBrickName()Ljava/lang/String;
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the brick name of the robot."
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 812
    const-string v1, "GetBrickName"

    .line 813
    .local v1, functionName:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 814
    const-string v3, ""

    .line 824
    :goto_0
    return-object v3

    .line 817
    :cond_0
    const/4 v3, 0x2

    new-array v0, v3, [B

    .line 818
    .local v0, command:[B
    const/4 v3, 0x0

    aput-byte v4, v0, v3

    .line 819
    const/16 v3, -0x65

    aput-byte v3, v0, v4

    .line 820
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v2

    .line 821
    .local v2, returnPackage:[B
    aget-byte v3, v0, v4

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 822
    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStringValueFromBytes([BI)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 824
    :cond_1
    const-string v3, ""

    goto :goto_0
.end method

.method public GetCurrentProgramName()Ljava/lang/String;
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the name of currently running program on the robot."
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 512
    const-string v1, "GetCurrentProgramName"

    .line 513
    .local v1, functionName:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 514
    const-string v4, ""

    .line 532
    :goto_0
    return-object v4

    .line 517
    :cond_0
    const/4 v4, 0x2

    new-array v0, v4, [B

    .line 518
    .local v0, command:[B
    aput-byte v6, v0, v6

    .line 519
    const/16 v4, 0x11

    aput-byte v4, v0, v5

    .line 520
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v2

    .line 521
    .local v2, returnPackage:[B
    aget-byte v4, v0, v5

    invoke-virtual {p0, v1, v2, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStatus(Ljava/lang/String;[BB)I

    move-result v3

    .line 522
    .local v3, status:I
    if-nez v3, :cond_1

    .line 524
    const/4 v4, 0x3

    invoke-virtual {p0, v2, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStringValueFromBytes([BI)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 526
    :cond_1
    const/16 v4, 0xec

    if-ne v3, v4, :cond_2

    .line 528
    const-string v4, ""

    goto :goto_0

    .line 531
    :cond_2
    aget-byte v4, v0, v5

    invoke-virtual {p0, v1, v2, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    .line 532
    const-string v4, ""

    goto :goto_0
.end method

.method public GetFirmwareVersion()Ljava/util/List;
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the firmware and protocol version numbers for the robot as a list where the first element is the firmware version number and the second element is the protocol version number."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 755
    const-string v1, "GetFirmwareVersion"

    .line 756
    .local v1, functionName:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 757
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 770
    :goto_0
    return-object v4

    .line 760
    :cond_0
    const/4 v4, 0x2

    new-array v0, v4, [B

    .line 761
    .local v0, command:[B
    const/4 v4, 0x0

    aput-byte v5, v0, v4

    .line 762
    const/16 v4, -0x78

    aput-byte v4, v0, v5

    .line 763
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v2

    .line 764
    .local v2, returnPackage:[B
    aget-byte v4, v0, v5

    invoke-virtual {p0, v1, v2, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 765
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 766
    .local v3, versions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x6

    aget-byte v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x5

    aget-byte v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 767
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x4

    aget-byte v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    aget-byte v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v4, v3

    .line 768
    goto :goto_0

    .line 770
    .end local v3           #versions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public GetInputValues(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .parameter "sensorPortLetter"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reads the values of an input sensor on the robot. Assumes sensor type has been configured via SetInputMode."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    const-string v1, "GetInputValues"

    .line 235
    .local v1, functionName:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 236
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 263
    :goto_0
    return-object v5

    .line 241
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->convertSensorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 248
    .local v3, port:I
    invoke-virtual {p0, v1, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getInputValues(Ljava/lang/String;I)[B

    move-result-object v4

    .line 249
    .local v4, returnPackage:[B
    if-eqz v4, :cond_1

    .line 250
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v2, inputValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v5, 0x4

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getBooleanValueFromBytes([BI)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    const/4 v5, 0x5

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getBooleanValueFromBytes([BI)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    const/4 v5, 0x6

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    const/4 v5, 0x7

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    const/16 v5, 0x8

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUWORDValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    const/16 v5, 0xa

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUWORDValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    const/16 v5, 0xc

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSWORDValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    const/16 v5, 0xe

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSWORDValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v5, v2

    .line 259
    goto :goto_0

    .line 242
    .end local v2           #inputValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    .end local v3           #port:I
    .end local v4           #returnPackage:[B
    :catch_0
    move-exception v0

    .line 243
    .local v0, e:Ljava/lang/IllegalArgumentException;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v6, 0x198

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v5, p0, v1, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 245
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_0

    .line 263
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .restart local v3       #port:I
    .restart local v4       #returnPackage:[B
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_0
.end method

.method public GetOutputState(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .parameter "motorPortLetter"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reads the output state of a motor on the robot."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    const-string v1, "GetOutputState"

    .line 182
    .local v1, functionName:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 183
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 211
    :goto_0
    return-object v5

    .line 188
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->convertMotorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 195
    .local v3, port:I
    invoke-direct {p0, v1, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getOutputState(Ljava/lang/String;I)[B

    move-result-object v4

    .line 196
    .local v4, returnPackage:[B
    if-eqz v4, :cond_1

    .line 197
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v2, outputState:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Number;>;"
    const/4 v5, 0x4

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSBYTEValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    const/4 v5, 0x5

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    const/4 v5, 0x6

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    const/4 v5, 0x7

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSBYTEValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    const/16 v5, 0x8

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    const/16 v5, 0x9

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getULONGValueFromBytes([BI)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    const/16 v5, 0xd

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSLONGValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    const/16 v5, 0x11

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSLONGValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    const/16 v5, 0x15

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSLONGValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v5, v2

    .line 207
    goto/16 :goto_0

    .line 189
    .end local v2           #outputState:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Number;>;"
    .end local v3           #port:I
    .end local v4           #returnPackage:[B
    :catch_0
    move-exception v0

    .line 190
    .local v0, e:Ljava/lang/IllegalArgumentException;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v6, 0x197

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v5, p0, v1, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 192
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_0

    .line 211
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .restart local v3       #port:I
    .restart local v4       #returnPackage:[B
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_0
.end method

.method public KeepAlive()J
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Keep Alive. Returns the current sleep time limit in milliseconds."
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 388
    const-string v1, "KeepAlive"

    .line 389
    .local v1, functionName:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move-wide v3, v6

    .line 405
    :goto_0
    return-wide v3

    .line 393
    :cond_0
    const/4 v3, 0x2

    new-array v0, v3, [B

    .line 394
    .local v0, command:[B
    aput-byte v4, v0, v4

    .line 395
    const/16 v3, 0xd

    aput-byte v3, v0, v5

    .line 396
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v2

    .line 397
    .local v2, returnPackage:[B
    aget-byte v3, v0, v5

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 398
    array-length v3, v2

    const/4 v4, 0x7

    if-ne v3, v4, :cond_1

    .line 399
    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getULONGValueFromBytes([BI)J

    move-result-wide v3

    goto :goto_0

    .line 401
    :cond_1
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KeepAlive: unexpected return package length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (expected 7)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-wide v3, v6

    .line 405
    goto :goto_0
.end method

.method public ListFiles(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .parameter "wildcard"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns a list containing the names of matching files found on the robot."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 720
    const-string v3, "ListFiles"

    .line 721
    .local v3, functionName:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 722
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 748
    :goto_0
    return-object v7

    .line 725
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 727
    .local v2, fileNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 728
    const-string p1, "*.*"

    .line 731
    :cond_1
    const/16 v7, 0x16

    new-array v0, v7, [B

    .line 732
    .local v0, command:[B
    aput-byte v8, v0, v9

    .line 733
    const/16 v7, -0x7a

    aput-byte v7, v0, v8

    .line 734
    const/16 v7, 0x13

    invoke-virtual {p0, p1, v0, v10, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 735
    invoke-virtual {p0, v3, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v5

    .line 736
    .local v5, returnPackage:[B
    aget-byte v7, v0, v8

    invoke-virtual {p0, v3, v5, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStatus(Ljava/lang/String;[BB)I

    move-result v6

    .line 737
    .local v6, status:I
    :goto_1
    if-nez v6, :cond_2

    .line 738
    invoke-virtual {p0, v5, v11}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v4

    .line 739
    .local v4, handle:I
    const/4 v7, 0x4

    invoke-virtual {p0, v5, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStringValueFromBytes([BI)Ljava/lang/String;

    move-result-object v1

    .line 740
    .local v1, fileName:Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 741
    new-array v0, v11, [B

    .line 742
    aput-byte v8, v0, v9

    .line 743
    const/16 v7, -0x79

    aput-byte v7, v0, v8

    .line 744
    invoke-virtual {p0, v4, v0, v10}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 745
    invoke-virtual {p0, v3, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v5

    .line 746
    aget-byte v7, v0, v8

    invoke-virtual {p0, v3, v5, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStatus(Ljava/lang/String;[BB)I

    move-result v6

    .line 747
    goto :goto_1

    .end local v1           #fileName:Ljava/lang/String;
    .end local v4           #handle:I
    :cond_2
    move-object v7, v2

    .line 748
    goto :goto_0
.end method

.method public LsGetStatus(Ljava/lang/String;)I
    .locals 7
    .parameter "sensorPortLetter"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the count of available bytes to read."
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 410
    const-string v1, "LsGetStatus"

    .line 411
    .local v1, functionName:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v6

    .line 424
    :goto_0
    return v3

    .line 417
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->convertSensorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 424
    .local v2, port:I
    invoke-virtual {p0, v1, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->lsGetStatus(Ljava/lang/String;I)I

    move-result v3

    goto :goto_0

    .line 418
    .end local v2           #port:I
    :catch_0
    move-exception v0

    .line 419
    .local v0, e:Ljava/lang/IllegalArgumentException;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0x198

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-virtual {v3, p0, v1, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    move v3, v6

    .line 421
    goto :goto_0
.end method

.method public LsRead(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .parameter "sensorPortLetter"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reads unsigned low speed data from an input sensor on the robot. Assumes sensor type has been configured via SetInputMode."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 480
    const-string v2, "LsRead"

    .line 481
    .local v2, functionName:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 482
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 506
    :goto_0
    return-object v8

    .line 487
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->convertSensorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 494
    .local v6, port:I
    invoke-virtual {p0, v2, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->lsRead(Ljava/lang/String;I)[B

    move-result-object v7

    .line 495
    .local v7, returnPackage:[B
    if-eqz v7, :cond_2

    .line 496
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 497
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v8, 0x3

    invoke-virtual {p0, v7, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v0

    .line 498
    .local v0, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 499
    add-int/lit8 v8, v3, 0x4

    aget-byte v8, v7, v8

    and-int/lit16 v5, v8, 0xff

    .line 500
    .local v5, n:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 488
    .end local v0           #count:I
    .end local v3           #i:I
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5           #n:I
    .end local v6           #port:I
    .end local v7           #returnPackage:[B
    :catch_0
    move-exception v1

    .line 489
    .local v1, e:Ljava/lang/IllegalArgumentException;
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v9, 0x198

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    invoke-virtual {v8, p0, v2, v9, v10}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 491
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #count:I
    .restart local v3       #i:I
    .restart local v4       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v6       #port:I
    .restart local v7       #returnPackage:[B
    :cond_1
    move-object v8, v4

    .line 502
    goto :goto_0

    .line 506
    .end local v0           #count:I
    .end local v3           #i:I
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public LsWrite(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;I)V
    .locals 19
    .parameter "sensorPortLetter"
    .parameter "list"
    .parameter "rxDataLength"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Writes low speed data to an input sensor on the robot. Assumes sensor type has been configured via SetInputMode."
    .end annotation

    .prologue
    .line 430
    const-string v9, "LsWrite"

    .line 431
    .local v9, functionName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 474
    :goto_0
    return-void

    .line 437
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->convertSensorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 444
    .local v12, port:I
    invoke-virtual/range {p2 .. p2}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v14

    const/16 v15, 0x10

    if-le v14, v15, :cond_1

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v14, v0

    const/16 v15, 0x19b

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v9

    move v3, v15

    move-object/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 438
    .end local v12           #port:I
    :catch_0
    move-exception v7

    .line 439
    .local v7, e:Ljava/lang/IllegalArgumentException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v14, v0

    const/16 v15, 0x198

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object p1, v16, v17

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v9

    move v3, v15

    move-object/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 450
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    .restart local v12       #port:I
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/appinventor/components/runtime/util/YailList;->toArray()[Ljava/lang/Object;

    move-result-object v5

    .line 451
    .local v5, array:[Ljava/lang/Object;
    array-length v14, v5

    new-array v6, v14, [B

    .line 452
    .local v6, bytes:[B
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    array-length v14, v5

    if-ge v10, v14, :cond_3

    .line 455
    aget-object v8, v5, v10

    .line 456
    .local v8, element:Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 459
    .local v13, s:Ljava/lang/String;
    :try_start_1
    invoke-static {v13}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    .line 465
    .local v11, n:I
    and-int/lit16 v14, v11, 0xff

    int-to-byte v14, v14

    aput-byte v14, v6, v10

    .line 466
    shr-int/lit8 v11, v11, 0x8

    .line 467
    if-eqz v11, :cond_2

    const/4 v14, -0x1

    if-eq v11, v14, :cond_2

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v14, v0

    const/16 v15, 0x19d

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    add-int/lit8 v18, v10, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v9

    move v3, v15

    move-object/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 460
    .end local v11           #n:I
    :catch_1
    move-exception v14

    move-object v7, v14

    .line 461
    .local v7, e:Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v14, v0

    const/16 v15, 0x19c

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    add-int/lit8 v18, v10, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v9

    move v3, v15

    move-object/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 452
    .end local v7           #e:Ljava/lang/NumberFormatException;
    .restart local v11       #n:I
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 473
    .end local v8           #element:Ljava/lang/Object;
    .end local v11           #n:I
    .end local v13           #s:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    move-object v1, v9

    move v2, v12

    move-object v3, v6

    move/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->lsWrite(Ljava/lang/String;I[BI)V

    goto/16 :goto_0
.end method

.method public MessageRead(I)Ljava/lang/String;
    .locals 12
    .parameter "mailbox"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Read a message from a mailbox (1-10) on the robot."
    .end annotation

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x4

    const/4 v7, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 537
    const-string v1, "MessageRead"

    .line 538
    .local v1, functionName:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 539
    const-string v5, ""

    .line 574
    :goto_0
    return-object v5

    .line 545
    :cond_0
    if-lt p1, v8, :cond_1

    const/16 v5, 0xa

    if-le p1, v5, :cond_2

    .line 546
    :cond_1
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v6, 0x199

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, p0, v1, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 548
    const-string v5, ""

    goto :goto_0

    .line 551
    :cond_2
    add-int/lit8 p1, p1, -0x1

    .line 553
    new-array v0, v11, [B

    .line 554
    .local v0, command:[B
    aput-byte v9, v0, v9

    .line 555
    const/16 v5, 0x13

    aput-byte v5, v0, v8

    .line 556
    const/4 v5, 0x2

    invoke-virtual {p0, v9, v0, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 557
    invoke-virtual {p0, p1, v0, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 558
    invoke-virtual {p0, v8, v0, v10}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyBooleanValueToBytes(Z[BI)V

    .line 559
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v4

    .line 560
    .local v4, returnPackage:[B
    aget-byte v5, v0, v8

    invoke-virtual {p0, v1, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 561
    array-length v5, v4

    const/16 v6, 0x40

    if-ne v5, v6, :cond_4

    .line 562
    invoke-virtual {p0, v4, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v2

    .line 563
    .local v2, mailboxEcho:I
    if-eq v2, p1, :cond_3

    .line 564
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MessageRead: unexpected return mailbox: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_3
    invoke-virtual {p0, v4, v10}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v5

    sub-int v3, v5, v8

    .line 568
    .local v3, messageLength:I
    invoke-virtual {p0, v4, v11, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStringValueFromBytes([BII)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 570
    .end local v2           #mailboxEcho:I
    .end local v3           #messageLength:I
    :cond_4
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MessageRead: unexpected return package length "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (expected 64)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_5
    const-string v5, ""

    goto/16 :goto_0
.end method

.method public MessageWrite(ILjava/lang/String;)V
    .locals 8
    .parameter "mailbox"
    .parameter "message"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Write a message to a mailbox (1-10) on the robot."
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 292
    const-string v1, "MessageWrite"

    .line 293
    .local v1, functionName:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 323
    :goto_0
    return-void

    .line 300
    :cond_0
    if-lt p1, v5, :cond_1

    const/16 v3, 0xa

    if-le p1, v3, :cond_2

    .line 301
    :cond_1
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0x199

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, p0, v1, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 305
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 306
    .local v2, messageLength:I
    const/16 v3, 0x3a

    if-le v2, v3, :cond_3

    .line 307
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0x19a

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v1, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 312
    :cond_3
    add-int/lit8 p1, p1, -0x1

    .line 314
    add-int/lit8 v3, v2, 0x4

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    .line 315
    .local v0, command:[B
    const/16 v3, -0x80

    aput-byte v3, v0, v7

    .line 316
    const/16 v3, 0x9

    aput-byte v3, v0, v5

    .line 317
    const/4 v3, 0x2

    invoke-virtual {p0, p1, v0, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 319
    add-int/lit8 v3, v2, 0x1

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v0, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 320
    const/4 v3, 0x4

    invoke-virtual {p0, p2, v0, v3, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 322
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public PlaySoundFile(Ljava/lang/String;)V
    .locals 6
    .parameter "fileName"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Play a sound file on the robot."
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 95
    const-string v1, "PlaySoundFile"

    .line 96
    .local v1, functionName:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 100
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0x196

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v1, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 104
    :cond_1
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".rso"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 108
    :cond_2
    const/16 v2, 0x17

    new-array v0, v2, [B

    .line 109
    .local v0, command:[B
    const/16 v2, -0x80

    aput-byte v2, v0, v4

    .line 110
    const/4 v2, 0x1

    aput-byte v5, v0, v2

    .line 111
    invoke-virtual {p0, v4, v0, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyBooleanValueToBytes(Z[BI)V

    .line 112
    const/4 v2, 0x3

    const/16 v3, 0x13

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 113
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public PlayTone(II)V
    .locals 5
    .parameter "frequencyHz"
    .parameter "durationMs"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Make the robot play a tone."
    .end annotation

    .prologue
    .line 118
    const-string v1, "PlayTone"

    .line 119
    .local v1, functionName:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 137
    :goto_0
    return-void

    .line 123
    :cond_0
    const/16 v2, 0xc8

    if-ge p1, v2, :cond_1

    .line 124
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "frequencyHz "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is invalid, using 200."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/16 p1, 0xc8

    .line 127
    :cond_1
    const/16 v2, 0x36b0

    if-le p1, v2, :cond_2

    .line 128
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "frequencyHz "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is invalid, using 14000."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/16 p1, 0x36b0

    .line 131
    :cond_2
    const/4 v2, 0x6

    new-array v0, v2, [B

    .line 132
    .local v0, command:[B
    const/4 v2, 0x0

    const/16 v3, -0x80

    aput-byte v3, v0, v2

    .line 133
    const/4 v2, 0x1

    const/4 v3, 0x3

    aput-byte v3, v0, v2

    .line 134
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUWORDValueToBytes(I[BI)V

    .line 135
    const/4 v2, 0x4

    invoke-virtual {p0, p2, v0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUWORDValueToBytes(I[BI)V

    .line 136
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public ResetInputScaledValue(Ljava/lang/String;)V
    .locals 8
    .parameter "sensorPortLetter"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reset the scaled value of an input sensor on the robot."
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 268
    const-string v2, "ResetInputScaledValue"

    .line 269
    .local v2, functionName:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 288
    :goto_0
    return-void

    .line 275
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->convertSensorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 282
    .local v3, port:I
    invoke-virtual {p0, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->resetInputScaledValue(Ljava/lang/String;I)V

    .line 283
    const/4 v4, 0x3

    new-array v0, v4, [B

    .line 284
    .local v0, command:[B
    const/16 v4, -0x80

    aput-byte v4, v0, v7

    .line 285
    const/16 v4, 0x8

    aput-byte v4, v0, v6

    .line 286
    const/4 v4, 0x2

    invoke-virtual {p0, v3, v0, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 287
    invoke-virtual {p0, v2, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    goto :goto_0

    .line 276
    .end local v0           #command:[B
    .end local v3           #port:I
    :catch_0
    move-exception v1

    .line 277
    .local v1, e:Ljava/lang/IllegalArgumentException;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v5, 0x198

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-virtual {v4, p0, v2, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public ResetMotorPosition(Ljava/lang/String;Z)V
    .locals 8
    .parameter "motorPortLetter"
    .parameter "relative"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reset motor position."
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 327
    const-string v2, "ResetMotorPosition"

    .line 328
    .local v2, functionName:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 347
    :goto_0
    return-void

    .line 334
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->convertMotorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 341
    .local v3, port:I
    const/4 v4, 0x4

    new-array v0, v4, [B

    .line 342
    .local v0, command:[B
    const/16 v4, -0x80

    aput-byte v4, v0, v7

    .line 343
    const/16 v4, 0xa

    aput-byte v4, v0, v6

    .line 344
    const/4 v4, 0x2

    invoke-virtual {p0, v3, v0, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 345
    const/4 v4, 0x3

    invoke-virtual {p0, p2, v0, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyBooleanValueToBytes(Z[BI)V

    .line 346
    invoke-virtual {p0, v2, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    goto :goto_0

    .line 335
    .end local v0           #command:[B
    .end local v3           #port:I
    :catch_0
    move-exception v1

    .line 336
    .local v1, e:Ljava/lang/IllegalArgumentException;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v5, 0x197

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-virtual {v4, p0, v2, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public SetBrickName(Ljava/lang/String;)V
    .locals 6
    .parameter "name"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the brick name of the robot."
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 797
    const-string v1, "SetBrickName"

    .line 798
    .local v1, functionName:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 808
    :goto_0
    return-void

    .line 802
    :cond_0
    const/16 v3, 0x12

    new-array v0, v3, [B

    .line 803
    .local v0, command:[B
    const/4 v3, 0x0

    aput-byte v5, v0, v3

    .line 804
    const/16 v3, -0x68

    aput-byte v3, v0, v5

    .line 805
    const/4 v3, 0x2

    const/16 v4, 0xf

    invoke-virtual {p0, p1, v0, v3, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 806
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v2

    .line 807
    .local v2, returnPackage:[B
    aget-byte v3, v0, v5

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    goto :goto_0
.end method

.method public SetInputMode(Ljava/lang/String;II)V
    .locals 7
    .parameter "sensorPortLetter"
    .parameter "sensorType"
    .parameter "sensorMode"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Configure an input sensor on the robot."
    .end annotation

    .prologue
    .line 162
    const-string v1, "SetInputMode"

    .line 163
    .local v1, functionName:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 177
    :goto_0
    return-void

    .line 169
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->convertSensorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 176
    .local v2, port:I
    invoke-virtual {p0, v1, v2, p2, p3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->setInputMode(Ljava/lang/String;III)V

    goto :goto_0

    .line 170
    .end local v2           #port:I
    :catch_0
    move-exception v0

    .line 171
    .local v0, e:Ljava/lang/IllegalArgumentException;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0x198

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v3, p0, v1, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public SetOutputState(Ljava/lang/String;IIIIIJ)V
    .locals 13
    .parameter "motorPortLetter"
    .parameter "power"
    .parameter "mode"
    .parameter "regulationMode"
    .parameter "turnRatio"
    .parameter "runState"
    .parameter "tachoLimit"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets the output state of a motor on the robot."
    .end annotation

    .prologue
    .line 142
    const-string v3, "SetOutputState"

    .line 143
    .local v3, functionName:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 158
    :goto_0
    return-void

    .line 149
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->convertMotorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 156
    .local v4, port:I
    move-object v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sanitizeTurnRatio(I)I

    move-result v8

    move-object v2, p0

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v9, p6

    move-wide/from16 v10, p7

    invoke-virtual/range {v2 .. v11}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->setOutputState(Ljava/lang/String;IIIIIIJ)V

    goto :goto_0

    .line 150
    .end local v4           #port:I
    :catch_0
    move-exception v12

    .line 151
    .local v12, e:Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0x197

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v2, p0, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public StartProgram(Ljava/lang/String;)V
    .locals 5
    .parameter "programName"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start execution of a previously downloaded program on the robot."
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 59
    const-string v1, "StartProgram"

    .line 60
    .local v1, functionName:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 77
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 64
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0x195

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v1, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 68
    :cond_1
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".rxe"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 72
    :cond_2
    const/16 v2, 0x16

    new-array v0, v2, [B

    .line 73
    .local v0, command:[B
    const/16 v2, -0x80

    aput-byte v2, v0, v4

    .line 74
    const/4 v2, 0x1

    aput-byte v4, v0, v2

    .line 75
    const/4 v2, 0x2

    const/16 v3, 0x13

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 76
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public StopProgram()V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stop execution of the currently running program on the robot."
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 82
    const-string v1, "StopProgram"

    .line 83
    .local v1, functionName:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 91
    :goto_0
    return-void

    .line 87
    :cond_0
    const/4 v2, 0x2

    new-array v0, v2, [B

    .line 88
    .local v0, command:[B
    const/4 v2, 0x0

    const/16 v3, -0x80

    aput-byte v3, v0, v2

    .line 89
    aput-byte v4, v0, v4

    .line 90
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public StopSoundPlayback()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stop sound playback."
    .end annotation

    .prologue
    .line 374
    const-string v1, "StopSoundPlayback"

    .line 375
    .local v1, functionName:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 383
    :goto_0
    return-void

    .line 379
    :cond_0
    const/4 v2, 0x2

    new-array v0, v2, [B

    .line 380
    .local v0, command:[B
    const/4 v2, 0x0

    const/16 v3, -0x80

    aput-byte v3, v0, v2

    .line 381
    const/4 v2, 0x1

    const/16 v3, 0xc

    aput-byte v3, v0, v2

    .line 382
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    goto :goto_0
.end method
